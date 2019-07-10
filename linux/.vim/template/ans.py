from pwn import *

context(os='linux', arch='amd64')
context.log_level = 'debug' # output verbose log

HOST = "target"
PORT = 1337
conn = None

if len(sys.argv) > 1 and sys.argv[1] == 'r':
    conn = remote(HOST, PORT)
else:
    conn = process('./pwnme')

# preparing for exploitation

log.info('Pwning')
