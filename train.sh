while IFS= read -r line; do
  export "$line"
done < .env

ssh $NAME

sh -c '/bin/sh -c cd /boot && ls -l'