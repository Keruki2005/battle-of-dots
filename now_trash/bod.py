from src import bod_server, bod_client

def main():
    choice = input("server (1) or client (2)?\n> ")

    if choice == "1":
        bod_server.main()
    
    elif choice == "2":
        bod_client.main()

    else:
        print("invalid choice.")

if __name__ == "__main__":
    main()
