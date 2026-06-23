export HF_HOME=/tmp/hf
export TRANSFORMERS_CACHE=/tmp/hf
export SENTENCE_TRANSFORMERS_HOME=/tmp/st

export CHROMA_DIR="$HOME/persist/chroma_db"
export CHROMA_COLLECTION="docs-bge"

export EMBEDDER_MODEL="intfloat/multilingual-e5-small"

export BM25_INDEX_PATH="data/bm25_idx.json"
export TOKENIZERS_PARALLELISM=false
export OMP_NUM_THREADS=2
export MKL_NUM_THREADS=2

mkdir -p "$CHROMA_DIR" /tmp/hf /tmp/st
export OPENAI_MODEL="gpt-4o-mini"
