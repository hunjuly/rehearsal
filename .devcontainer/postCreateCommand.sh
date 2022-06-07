projects=$(ls -d */)

for i in $projects; do
    if [ -f "${i}package-lock.json" ]; then
        npm ci --prefix $i
    fi
done

git clone https://github.com/hunjuly/practice examples
