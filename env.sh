# === Put model caches on /tmp (big, disposable) ===
export HF_HOME=/tmp/hf
export TRANSFORMERS_CACHE=/tmp/hf
export SENTENCE_TRANSFORMERS_HOME=/tmp/st

# === Keep the DB small but persistent under HOME ===
export CHROMA_DIR="$HOME/persist/chroma_db"
export CHROMA_COLLECTION="docs-bge"

# === Project knobs ===
# Start with a SMALL multilingual model to avoid huge downloads.
# Once stable, you can switch back to "BAAI/bge-m3".
export EMBEDDER_MODEL="intfloat/multilingual-e5-small"

export BM25_INDEX_PATH="data/bm25_idx.json"
export TOKENIZERS_PARALLELISM=false
export OMP_NUM_THREADS=2
export MKL_NUM_THREADS=2

# Ensure dirs exist
mkdir -p "$CHROMA_DIR" /tmp/hf /tmp/st

# ---- generator (OpenAI) ----
# copy this file to env.sh and fill the key, or export before running
# export OPENAI_API_KEY="sk-...your-key..."
export OPENAI_MODEL="gpt-4o-mini"