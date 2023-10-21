#!/bin/bash
# ?by: Marco5dev

echo "date is: $(date)"
sleep 1
echo "by: Marco5dev"
echo "github: https://github.com/Marco5dev"
sleep 1
echo "Hi..."
sleep 1
echo "Let's Get Started..."
sleep 1

# Define options for the choose list with corresponding activation codes
declare -A versions=(
  [1]="TX9XD-98N7V-6WMQ6-BX7FG-H8Q99"
  [2]="3KHY7-WNT83-DGQKR-F7HPR-844BM"
  [3]="7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH"
  [4]="PVMJN-6DFY6-9CCP6-7BKTT-D3WVR"
  [5]="W269N-WFGWX-YVC9B-4J6C9-T83GX"
  [6]="MH37W-N47XK-V7XM9-C7227-GCQG9"
  [7]="NW6C2-QMPVW-D7KKK-3GKT6-VCFB2"
  [8]="2WH4N-8QGBV-H22JP-CT43Q-MDWWJ"
  [9]="NPPR9-FWDCX-D2C8J-H872K-2YT43"
  [10]="DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4"
)

# Define options for the choose list
choose=("Windows 10" "Windows 11" "Quit")
options=("Win 10 Home" "Win 10 Home N" "Win 10 Home Single Language" "Win 10 Home Country Specific" "Win 10 Professional" "Win 10 Professional N" "Win 10 Education" "Win 10 Education N" "Win 10 Enterprise" "Win 10 Enterprise N" "..Back" "Quit")
options11=("Win 11 Home" "Win 11 Home N" "Win 11 Home Single Language" "Win 11 Home Country Specific" "Win 11 Professional" "Win 11 Professional N" "Win 11 Education" "Win 11 Education N" "Win 11 Enterprise" "Win 11 Enterprise N" "..Back" "..Quit")

# Prompt user with the choose list
PS3="Select a windows version: "
select choice1 in "${choose[@]}"; do
  case $REPLY in
  # Handle each option from 1 to 10 separately
  # * Option 1
  # ! Windows 10
  1)
    # Prompt user with the choose list
    PS3="Select a windows 10 version: "
    select choice in "${options[@]}"; do
      case $REPLY in
      # Handle each option from 1 to 10 separately
      # * Option 1
      1)
        version=${options[0]}
        activation_code=${versions[1]}
        ;;

      # * Option 2
      2)
        version=${options[1]}
        activation_code=${versions[2]}
        ;;

      # * Option 3
      3)
        version=${options[2]}
        activation_code=${versions[3]}
        ;;

      # * Option 4
      4)
        version=${options[3]}
        activation_code=${versions[4]}
        ;;

      # * Option 5
      5)
        version=${options[4]}
        activation_code=${versions[5]}
        ;;

      # * Option 6
      6)
        version=${options[5]}
        activation_code=${versions[6]}
        ;;

      # * Option 7
      7)
        version=${options[6]}
        activation_code=${versions[7]}
        ;;

      # * Option 8
      8)
        version=${options[7]}
        activation_code=${versions[8]}
        ;;

      # * Option 9
      9)
        version=${options[8]}
        activation_code=${versions[9]}
        ;;

      # * Option 10
      10)
        version=${options[9]}
        activation_code=${versions[10]}
        ;;

      # * Option 11 (Back)
      11)
        # go back to select the windows version
        break
        ;;

      # * Option 12 (Quit)
      12)
        echo "Quitting..."
        sleep 3
        break
        ;;

      # * Invalid option
      *)
        echo "Invalid option. Please try again."
        continue
        ;;
      esac

      # Ask for confirmation
      read -p "You selected $version. Confirm? (y/n): " confirm
      if [[ $confirm == [yY] ]]; then
        sleep 1
        echo "We are making every thing ready for you..."
        sleep 1
        slmgr /ipk $activation_code
        sleep 5
        echo "Don't turn you PC off..."
        sleep 1
        slmgr /skms kms8.msguides.com
        sleep 5
        echo "We are finaly there..."
        sleep 1
        slmgr /ato
        sleep 2
        echo "Activation completed for $version"
        sleep 1
        echo "If there is any problems please restart your PC and run the script again"
        sleep 1
        echo "github: https://github.com/Marco5dev"
        echo "By Marco5dev 😎"
        exit
      else
        echo "Activation canceled."
      fi
    done

    ;;

  # * Option 2
  # ! Windows 11
  2)
    # Prompt user with the choose list
    PS3="Select a windows 11 version: "
    select choice in "${options11[@]}"; do
      case $REPLY in
      # Handle each option from 1 to 10 separately
      # * Option 1
      1)
        version=${options11[0]}
        activation_code=${versions[1]}
        ;;

      # * Option 2
      2)
        version=${options11[1]}
        activation_code=${versions[2]}
        ;;

      # * Option 3
      3)
        version=${options11[2]}
        activation_code=${versions[3]}
        ;;

      # * Option 4
      4)
        version=${options11[3]}
        activation_code=${versions[4]}
        ;;

      # * Option 5
      5)
        version=${options11[4]}
        activation_code=${versions[5]}
        ;;

      # * Option 6
      6)
        version=${options11[5]}
        activation_code=${versions[6]}
        ;;

      # * Option 7
      7)
        version=${options11[6]}
        activation_code=${versions[7]}
        ;;

      # * Option 8
      8)
        version=${options11[7]}
        activation_code=${versions[8]}
        ;;

      # * Option 9
      9)
        version=${options11[8]}
        activation_code=${versions[9]}
        ;;

      # * Option 10
      10)
        version=${options11[9]}
        activation_code=${versions[10]}
        ;;

      # * Option 11 (Back)
      11)
        # go back to select the windows version
        break 1
        ;;

      # * Option 12 (Quit)
      12)
        echo "Quitting..."
        sleep 3
        exit
        ;;

      # * Invalid option
      *)
        echo "Invalid option. Please try again."
        continue
        ;;
      esac

      # Ask for confirmation
      read -p "You selected $version. Confirm? (y/n): " confirm
      if [[ $confirm == [yY] ]]; then
        sleep 1
        echo "We are making every thing ready for you..."
        sleep 1
        slmgr /ipk $activation_code
        sleep 5
        echo "Don't turn you PC off..."
        sleep 1
        slmgr /skms kms8.msguides.com
        sleep 5
        echo "We are finaly there..."
        sleep 1
        slmgr /ato
        sleep 2
        echo "Activation completed for $version"
        sleep 1
        echo "If there is any problems please restart your PC and run the script again"
        sleep 1
        echo "github: https://github.com/Marco5dev"
        echo "By Marco5dev 😎"
        exit
      else
        echo "Activation canceled."
      fi
    done

    ;;
  # * Option 11 (Quit)
  3)
    echo "Quitting..."
    sleep 3
    exit
    ;;

  # * Invalid option
  *)
    echo "Invalid option. Please try again."
    continue
    ;;
  esac
done
