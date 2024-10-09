# LISÄÄ KÄYTTÄJÄT RYHMÄÄN CSV-TIEDOSTOSTA
# =======================================

# Tiedoston nimi ja polku
$Tiedosto = "C:\Users\Administrator\Documents\Johtoryhmanjasenet.csv"

# Ryhmän nimi
$Ryhmä = "Johto"

# Lista ryhmän jäsenistä
$Lista = Import-Csv -Path $Tiedosto -Delimiter ";" -Encoding Default

# Putkitetaan lista ryhmän jäseniksi käyttämällä foreach-silmukkaa
foreach($Rivi in $Lista)
{
    Add-ADGroupMember -Identity $Ryhmä -Members $Rivi.SamAccountName
}