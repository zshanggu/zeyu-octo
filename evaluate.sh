sudo rm -rf build/ octo.egg-info/
sudo python setup.py build install
export XLA_PYTHON_CLIENT_PREALLOCATE=false
export XLA_PYTHON_CLIENT_MEM_FRACTION=.50
export XLA_PYTHON_CLIENT_ALLOCATOR=platform
CUDA_VISIBLE_DEVICES=0 python examples/03_eval_finetuned.py --debug --finetuned_path="/home/zeyu/PHD_LAB/zeyu-octo/exp/aloha_ori/"