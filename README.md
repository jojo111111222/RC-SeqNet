# RC-SeqNet
As a course project in Computer Vision，Bias Mitigation in ISIC Skin Lesion Classification via Gradient Penalty
# 设备
Pytorch=2.0.0
cuda=11.8
python=3.8.10
GPU:3060-12G
# 环境配置
conda create -n cv python=3.8.10
conda activate cv
pip install -r requirements.txt
#数据集--ISIC-2019
下载地址：https://challenge.isic-archive.com/data/#2019
解压到:/RC-SeqNet/mnt
# 运行指令
bash test.sh
