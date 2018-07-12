module Create 
    def create(choice)
    if choice == "p" || choice == "politician"
      create_politician
    elsif choice == "v" || choice =="voter"
      create_voter
    end
  end
end