from src import bod_server, bod_client, bod_map_editor

def main():
    choice = input("server (1), client (2), or map editor (3)?\n> ")

    if choice == "1":
        bod_server.main()
    
    elif choice == "2":
        bod_client.main()

    elif choice == "3":
        bod_map_editor.main()

    else:
        print("invalid choice.")

if __name__ == "__main__":
    main()
