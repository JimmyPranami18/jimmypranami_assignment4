import hashlib

def find_nonce_with_prefix(prefix, start_string):
    nonce = 0
    while True:
        input_string = start_string + str(nonce)
        hash_result = hashlib.sha256(input_string.encode()).hexdigest()
        if hash_result.startswith(prefix):
            return input_string, hash_result
        nonce += 1

prefix = '00000'
start_string = 'devadnani26'
nonce, hash_result = find_nonce_with_prefix(prefix, start_string)
print(f"Input String: {nonce}")
print(f"Hash: {hash_result}")
