seed=${1:-1234}
CUDA_DEVICE=${CUDA_DEVICE:-0}

python -m allennlp.run train -f --include-package tutorial -s logs/feverlite/seed-${seed} configs/feverlite-s2v-cnn.json -o '{"trainer":{"cuda_device":'${CUDA_DEVICE}'},"random_seed":'${seed}',"numpy_seed":'${seed}',"pytorch_seed":'${seed}'}'


