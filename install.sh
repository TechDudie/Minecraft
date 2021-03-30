sudo apt install git g++ make libc6-dev cmake libpng-dev libjpeg-dev libxxf86vm-dev libgl1-mesa-dev libsqlite3-dev libogg-dev libvorbis-dev libopenal-dev libcurl4-gnutls-dev libfreetype6-dev zlib1g-dev libgmp-dev libjsoncpp-dev libbz2-dev libirrlicht-dev
wget https://github.com/TechDudie/minetest/archive/master.tar.gz
tar xf master.tar.gz
mv minetest-master minecraft
cd minecraft
cmake . -DRUN_IN_PLACE=TRUE
make -j$(nproc)
git clone --depth 1 https://git.minetest.land/MineClone2/MineClone2.git
mv MineClone2 minecraft/games/mineclone2
git clone --depth 1 https://github.com/EliasFleckenstein03/mc-textures.git
mv mc-textures minecraft/games/mineclone2/textures
rm master.tar.gz
gcc main.c -o minecraft
