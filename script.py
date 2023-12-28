from PIL import Image
import os
import shutil
import argparse

#parser
parser = argparse.ArgumentParser(description='Process command line arguments')
parser.add_argument('--image_path', type=str, help='Path to the image files')
parser.add_argument('--cloth_path', type=str, help='Path to the cloth files')
args = parser.parse_args()
image_path = args.image_path
cloth_path = args.cloth_path

#creating directories
os.system('mkdir /content/project/VITON-HD/datasets/test')
os.system('mkdir /content/project/VITON-HD/datasets/test/cloth')
os.system('mkdir /content/project/VITON-HD/datasets/test/cloth-mask')
os.system('mkdir /content/project/VITON-HD/datasets/test/image')
os.system('mkdir /content/project/VITON-HD/datasets/test/image-parse')
os.system('mkdir /content/project/VITON-HD/datasets/test/openpose-img')
os.system('mkdir /content/project/VITON-HD/datasets/test/openpose-json')

#resizing the input images
def resize_img(path, save_path):
    im = Image.open(path)
    im = im.resize((768, 1024))
    filename = os.path.basename(path)
    os.makedirs(save_path, exist_ok=True)
    save_path = os.path.join(save_path, os.path.splitext(filename)[0] + ".jpg")
    im.save(save_path, "JPEG")

resize_img(cloth_path,'VITON-HD/datasets/test/cloth/')
resize_img(image_path,'VITON-HD/datasets/test/image/')

#cloth_mask
os.system("python cloth-segementation/cloth-mask.py")

#image parsing
os.system("python Self-Correction-Human-Parsing/simple_extractor.py --dataset 'lip' --model-restore 'Self-Correction-Human-Parsing/checkpoints/final/exp-schp-201908261155-lip.pth' --input-dir 'VITON-HD/datasets/test/image' --output-dir 'VITON-HD/datasets/test/image-parse'")

#open-pose
os.system('cp /content/project/open-pose/build/src/openpose/libopenpose.so.1.7.0 /usr/local/lib')
os.system('cp /content/project/open-pose/build/caffe/lib/libcaffe.so.1.0.0 /usr/local/lib')
os.system('sudo ldconfig')
os.system('apt-get -qq install -y libatlas-base-dev libprotobuf-dev libleveldb-dev libsnappy-dev libhdf5-serial-dev protobuf-compiler libgflags-dev libgoogle-glog-dev liblmdb-dev opencl-headers ocl-icd-opencl-dev libviennacl-dev')
os.system("cd open-pose && ./build/examples/openpose/openpose.bin --image_dir '/content/project/VITON-HD/datasets/test/image' --write_json '/content/project/VITON-HD/datasets/test/openpose-json' --display 0 --render_pose 0 --hand")
os.system("cd open-pose && ./build/examples/openpose/openpose.bin --image_dir '/content/project/VITON-HD/datasets/test/image' --display 0 --write_images '/content/project/VITON-HD/datasets/test/openpose-img' --hand --render_pose 1 --disable_blending true")

# Create test_pair.txt file
with open('VITON-HD/datasets/test_pairs.txt', 'w') as file:
    image_files = os.listdir('VITON-HD/datasets/test/image')
    cloth_files = os.listdir('VITON-HD/datasets/test/cloth')

    # If there is one cloth and multiple images
    if len(cloth_files) == 1 and len(image_files) > 1:
        cloth = cloth_files[0]
        for image in image_files:
            file.write(f'{image} {cloth}\n')

    # If there is one image and multiple cloths
    elif len(image_files) == 1 and len(cloth_files) > 1:
        image = image_files[0]
        for cloth in cloth_files:
            file.write(f'{image} {cloth}\n')

    # If there is a one-to-one correspondence between image and cloth files
    else:
        for image, cloth in zip(image_files, cloth_files):
            file.write(f'{image} {cloth}\n')

os.chdir('/content/project/VITON-HD')
os.system("python test.py --name test")
os.system("rm -rf /content/project/VITON-HD/result/test/.ipynb_checkpoints")
os.system("rm -rf /content/project/VITON-HD/datasets/test")
os.system("rm -rf /content/project/VITON-HD/datasets/test_pairs.txt")
