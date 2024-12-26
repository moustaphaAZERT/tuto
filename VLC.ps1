# Obtenir le chemin du bureau de l'utilisateur
$desktopPath = [Environment]::GetFolderPath("Desktop")

# D�finir le chemin complet pour le dossier "vlc video"
$folderPath = Join-Path -Path $desktopPath -ChildPath "vlc video"

# V�rifier si le dossier existe d�j�
if (-Not (Test-Path -Path $folderPath)) {
    # Cr�er le dossier
    New-Item -ItemType Directory -Path $folderPath | Out-Null
    Write-Output "Le dossier 'vlc video' a �t� cr�� avec succ�s sur le bureau."
} else {
    Write-Output "Le dossier 'vlc video' existe d�j� sur le bureau."
}
