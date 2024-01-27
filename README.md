# Step-by-step guide

1. Clone the repo and go into the directory
```bash
git clone https://github.com/Urpagin/QuickFlask.git && cd QuickFlask
```
2. Open the `update.sh` file with your editor of choice (we'll use vim) and set the the `container_name` and `container_port` variables
```bash
vim update.sh
```
3. Execute the `update.sh` file to build & run the container
```bash
./update.sh
```
4. The app should now be accessible with `http://<your_machine_ip>:<container_port>` or `http://127.0.0.1:<container_port>` if you are on the same machine
![image](https://github.com/Urpagin/QuickFlask/assets/72459611/5af88b51-8ebf-481b-8b77-3c6eb146859e)
