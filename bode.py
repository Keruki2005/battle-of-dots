from src import bode_server, bode_client, bode_map_editor

def main():
    choice = input("server (1), client (2), or map editor (3)?\n> ")

    if choice == "1":
        bode_server.main()
    
    elif choice == "2":
        bode_client.main()

    elif choice == "3":
        bode_map_editor.main()

    else:
        print("invalid choice.")

if __name__ == "__main__":
    main()
