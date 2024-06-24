# Catppuccin
## GRUB
1. Clone this repository locally and enter the cloned folder:

    ```shell
    git clone https://github.com/catppuccin/grub.git && cd grub
    ```

2. Copy all or selected theme from `src` folder to
`/usr/share/grub/themes/`. E.g. to copy all themes use:

    ```shell
    sudo cp -r src/* /usr/share/grub/themes/
    ```

3. Uncomment and edit following line in `/etc/default/grub` to your selected
   theme:

    ```shell
    GRUB_THEME="/usr/share/grub/themes/catppuccin-<flavor>-grub-theme/theme.txt"
    ```

4. Update grub:

    ```shell
    sudo grub-mkconfig -o /boot/grub/grub.cfg
    ```

    For Fedora:

    ```shell
    sudo grub2-mkconfig -o /boot/grub2/grub.cfg
