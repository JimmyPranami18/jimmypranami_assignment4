import hashlib

def find_nonce_with_prefix(prefix):
    nonce = 0
    while True:
        input_string = str(nonce)
        hash_result = hashlib.sha256(input_string.encode()).hexdigest()
        if hash_result.startswith(prefix):
            return input_string, hash_result
        nonce += 1

prefix = '00000'
nonce, hash_result = find_nonce_with_prefix(prefix)
print(f"Nonce: {nonce}")
print(f"Hash: {hash_result}")
