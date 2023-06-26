import os
import subprocess
import boto3
from datetime import datetime

db_host = 'localhost'
db_port = '5432'
db_name = 'testdb'
db_user = 'postgres'
db_password = 'devops123'

s3_bucket_name = 'devops-s3'
s3_backup_path = 'backup'

temp_dir = '/tmp'

#DEFININDO O NOME DO ARQUIVO DE BACKUP PEGANDO INFORMAÇÕES DE DATA
backup_filename = f'{db_name}_backup_{datetime.now().strftime("%Y-%m-%d_%H-%M-%S")}.sql'

#GERAÇÃO DO ARQUIVO DE BACKUP
backup_command = f'pg_dump --version "12.15" -h {db_host} -p {db_port} -U {db_user} -Fc {db_name} > {os.path.join(temp_dir, backup_filename)}'

try:
    subprocess.run(backup_command, shell=True, check=True)
except subprocess.CalledProcessError as e:
    print(f'Erro ao gerar o backup: {e}')
    exit(1)

#CONFIGURAÇÕES NO S3
s3_client = boto3.client('s3', aws_access_key_id="aws_access_key_id", aws_secret_access_key="aws_secret_access_key")
s3_backup_path = os.path.join(s3_backup_path, backup_filename)
s3_client.upload_file(os.path.join(temp_dir, backup_filename), s3_bucket_name, s3_backup_path)

#DELETANDO O ARQUIVO TEMPORARIO
os.remove(os.path.join(temp_dir, backup_filename))

print(f'Backup Criado! Arquivo {backup_filename} armazenado no s3')
