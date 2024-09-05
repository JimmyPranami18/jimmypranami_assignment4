import hashlib

def find_nonce_for_input(input_data, prefix):
    nonce = 0
    while True:
        combined_input = f"{input_data}|{nonce}"
        hash_result = hashlib.sha256(combined_input.encode()).hexdigest()
        if hash_result.startswith(prefix):
            return nonce, hash_result
        nonce += 1

input_data = "Dev => Karan | Rs 100\nKaran => Darsh | Rs 10"
prefix = '00000'  # Adjust the prefix as needed
nonce, hash_result = find_nonce_for_input(input_data, prefix)
print(f"Nonce: {nonce}")
print(f"Hash: {hash_result}")
