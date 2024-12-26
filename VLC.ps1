# Obtenir le chemin du bureau de l'utilisateur
$desktopPath = [Environment]::GetFolderPath("Desktop")

# Définir le chemin complet pour le dossier "vlc video"
$folderPath = Join-Path -Path $desktopPath -ChildPath "vlc video"

# Vérifier si le dossier existe déjà
if (-Not (Test-Path -Path $folderPath)) {
    # Créer le dossier
    New-Item -ItemType Directory -Path $folderPath | Out-Null
    Write-Output "Le dossier 'vlc video' a été créé avec succès sur le bureau."
} else {
    Write-Output "Le dossier 'vlc video' existe déjà sur le bureau."
}
