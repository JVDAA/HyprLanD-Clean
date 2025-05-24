#!/bin/bash
echo "Instalando dependências..."
sudo pacman -Syu --noconfirm hyprland waybar wofi swww kitty zsh git curl

echo "Configurando teclado para pt-br-abnt2..."
mkdir -p ~/.config/hypr
cat <<EOT > ~/.config/hypr/hyprland.conf
input {
    kb_layout = br
    kb_variant = abnt2
}
EOT

echo "Instalando Oh My Zsh com tema Mikeh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/Mikeh/dotfiles.git \$ZSH_CUSTOM/themes/mikeh
sed -i 's/ZSH_THEME=".*"/ZSH_THEME="mikeh"/' ~/.zshrc

echo "Instalação concluída!"
