import 'dart:io';

void main() {
    String? pizza_size;
    int pizza_price = -1;
    int quantity;
    int total;

    print("Pizza Price: \"Small: 5 USD, Medium: 7 USD, Large: 10 USD\"");
    print("Please enter your pizza size (small, medium, or large):");

    while(pizza_price == -1) {
        pizza_size = stdin.readLineSync()?.trim().toLowerCase();
        switch(pizza_size) {
            case 'small':
                pizza_price = 5;
                break;

            case 'medium':
                pizza_price = 7;
                break;

            case 'large':
                pizza_price = 10;
                break;

            default:
                print("Value invalid! Please re-enter your pizza size (small, medium, large):");
        }
    }

    print("How many pizzas do you want of $pizza_size?");
    quantity = int.parse(stdin.readLineSync()!);

    total = pizza_price * quantity;
    print("Your Total Payment is: \$$total");
}