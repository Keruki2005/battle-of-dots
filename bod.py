from src import wod_server, wod_client

def main():
    choice = input("server (1) or client (2)?\n> ")

    if choice == "1":
        wod_server.main()
    
    elif choice == "2":
        wod_client.main()

    else:
        print("invalid choice.")

if __name__ == "__main__":
    main()
