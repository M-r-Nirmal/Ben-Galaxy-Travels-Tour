function getBotResponse(input) {
    //Relavant to Ben Galaxy Travels and Tours
    if (input == "What are the services you provide?") {
        return "We provide Hotels Services, Transport services, Air Tickets and guides to places.";
    } else if (input == "Your address?") {
        return "F44,45 Peoples park, Colombo-11, Sri Lanka.";
    } else if (input == "How to contact you?") {
        return "If you like to contact us give a call to 011-2587469";
    } else if (input == "Thanks for your service") {
        return "You are welcome !";
    }

    // Simple responses
    if (input == "hello") {
        return "Hello there! How Can I Help You ?";
    } else if (input == "goodbye") {
        return "Talk to you later!";
    } else if (input == "hi") {
        return "Hello How Can I Help You ?";
    } else {
        return "Try asking something else!";
    }

}