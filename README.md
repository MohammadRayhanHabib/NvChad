![image](https://github.com/user-attachments/assets/f86e3596-0554-4af6-a711-a89b1a17429f)
![image](https://github.com/user-attachments/assets/a402de9a-35a1-478d-8f0b-35d96e19e0f7)
![image](https://github.com/user-attachments/assets/a7d1288a-156d-4413-8b90-6c3ea7412ed4)
Backup old nvim config.
```
mv ~/.config/nvim ~/.config/nvim-old
```
Or remove old nvim config.
```
rm -rf ~/.config/nvim
```
Remove local/state and local/share
```
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
```
Or this already configured version
```
git clone https://github.com/MohammadRayhanHabib/NvChad.git ~/.config/nvim && nvim
```
For Windows (PowerShell):
```
git clone https://github.com/MohammadRayhanHabib/NvChad.git $env:LOCALAPPDATA\nvim && nvim
```
