#!/bin/bash

# Prompt user for state of Brazil and generate states top 4 soccer teams
echo "Enter the state of Brazil (avaliables: SP, RJ, MG, ES) the company is located. Choose only one. If you want multiple states, choose by region (available: SE) or the whole country (Brazil)"
read state
  case "$state" in
    "SP")
      echo "Santos#000" >> "Passwordlist.txt"
      echo "Palmeiras#000" >> "Passwordlist.txt"
      echo "Corinthians#000" >> "Passwordlist.txt"
      echo "SaoPaulo#000" >> "Passwordlist.txt"
      ;;
    "RJ")
      echo "Flamengo#000" >> "Passwordlist.txt"
      echo "Fluminense#000" >> "Passwordlist.txt"
      echo "Vasco#000" >> "Passwordlist.txt"
      echo "Botafogo#000" >> "Passwordlist.txt"
      ;;
    "MG")
      echo "Cruzeiro#000" >> "Passwordlist.txt"
      echo "Atletico#000" >> "Passwordlist.txt"
      echo "América#000" >> "Passwordlist.txt"
      echo "Villa#000" >> "Passwordlist.txt"
      ;;
    "ES")
      echo "Flamengo#000" >> "Passwordlist.txt"
      echo "Fluminense#000" >> "Passwordlist.txt"
      echo "Vasco#000" >> "Passwordlist.txt"
      echo "Botafogo#000" >> "Passwordlist.txt"
      ;;
    "SE")
      echo "Cruzeiro#000" >> "Passwordlist.txt"
      echo "Atletico#000" >> "Passwordlist.txt"
      echo "América#000" >> "Passwordlist.txt"
      echo "Villa#000" >> "Passwordlist.txt"
      echo "Flamengo#000" >> "Passwordlist.txt"
      echo "Fluminense#000" >> "Passwordlist.txt"
      echo "Vasco#000" >> "Passwordlist.txt"
      echo "Botafogo#000" >> "Passwordlist.txt"
      echo "Santos#000" >> "Passwordlist.txt"
      echo "Palmeiras#000" >> "Passwordlist.txt"
      echo "Corinthians#000" >> "Passwordlist.txt"
      echo "SaoPaulo#000" >> "Passwordlist.txt"
      ;;
    "Brazil")
      echo "Cruzeiro#000" >> "Passwordlist.txt"
      echo "Atletico#000" >> "Passwordlist.txt"
      echo "América#000" >> "Passwordlist.txt"
      echo "Villa#000" >> "Passwordlist.txt"
      echo "Flamengo#000" >> "Passwordlist.txt"
      echo "Fluminense#000" >> "Passwordlist.txt"
      echo "Vasco#000" >> "Passwordlist.txt"
      echo "Botafogo#000" >> "Passwordlist.txt"
      echo "Santos#000" >> "Passwordlist.txt"
      echo "Palmeiras#000" >> "Passwordlist.txt"
      echo "Corinthians#000" >> "Passwordlist.txt"
      echo "SaoPaulo#000" >> "Passwordlist.txt"
      echo "Gremio#000" >> "Passwordlist.txt"
      echo "Internacional#000" >> "Passwordlist.txt"
      echo "Sport#000" >> "Passwordlist.txt"
      echo "Bahia#000" >> "Passwordlist.txt"
      echo "Fortaleza#000" >> "Passwordlist.txt"
  esac

# Prompt user for company name
echo "Enter the Name of the target Company without spaces, with capitalized first letter"
read target
echo ""$target"#000" >> "Passwordlist.txt"

# Determine current month in Portuguese
month=$(date +%m)
case "$month" in
  "01")
    month_name="Janeiro"
    ;;
  "02")
    month_name="Fevereiro"
    ;;
  "03")
    month_name="Março"
    ;;
  "04")
    month_name="Abril"
    ;;
  "05")
    month_name="Maio"
    ;;
  "06")
    month_name="Junho"
    ;;
  "07")
    month_name="Julho"
    ;;
  "08")
    month_name="Agosto"
    ;;
  "09")
    month_name="Setembro"
    ;;
  "10")
    month_name="Outubro"
    ;;
  "11")
    month_name="Novembro"
    ;;
  "12")
    month_name="Dezembro"
    ;;
esac
echo ""$month_name"#000" >> "Passwordlist.txt"

# Determine current BR-season based on current date
if [[ $month -eq 9 && $day -ge 22 ]] || [[ $month -eq 12 && $day -lt 21 ]]; then
  echo "Primavera#000" >> "Passwordlist.txt"
elif [[ $month -eq 12 && $day -ge 21 ]] || [[ $month -eq 3 && $day -lt 20 ]]; then
  echo "Verao#000" >> "Passwordlist.txt"
elif [[ $month -eq 3 && $day -ge 20 ]] || [[ $month -eq 6 && $day -lt 21 ]]; then
  echo "Outono#000" >> "Passwordlist.txt"
else
  echo "Inverno#000" >> "Passwordlist.txt"
fi

#Password list
echo "Deus#000" >> "Passwordlist.txt"
echo "Jesus#000" >> "Passwordlist.txt"
echo "Senha#000" >> "Passwordlist.txt"
echo "Mudar#000" >> "Passwordlist.txt"
echo "Brasil#000" >> "Passwordlist.txt"
echo "Amor#000" >> "Passwordlist.txt"
echo "Familia#000" >> "Passwordlist.txt"
cat "Passwordlist.txt" | grep 000 | sed  "s/000/123/g" >>  "Passwordlist.txt"
cat "Passwordlist.txt" | grep 000 | sed  "s/000/1234/g" >>  "Passwordlist.txt"
cat "Passwordlist.txt" | grep 000 | sed  "s/000/12345/g" >>  "Passwordlist.txt"
cat "Passwordlist.txt" | grep 000 | sed  "s/000/$(date +%Y)/g" >>  "Passwordlist.txt"
cat "Passwordlist.txt" | grep '#' | sed  's/#/@/g' >>  "Passwordlist.txt"
cat "Passwordlist.txt" | grep '#' | sed  's/#/./g' >>  "Passwordlist.txt"

sed -i '/000/d' "Passwordlist.txt"
sort -u Passwordlist.txt >> "Passwordlist-$target-$state-$(date +%d-%m-%Y).txt"
rm "Passwordlist.txt"
echo "Password list generated and stored in $(pwd)/Passwordlist-$target-$state-$(date +%d-%m-%Y).txt"
