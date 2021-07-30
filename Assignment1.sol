pragma solidity ^0.8.0;

// Requirement 1) Create a first "ParentVehicle"
contract Vehicle {
    function start() public pure returns (string memory) {
        string memory message = "The Vehicle has just Started";
        return message;
    }

    function accelerate() public pure returns (string memory) {
        string memory message = "The Vehicle has just Accelerated";
        return message;
    }

    function stop() public pure returns (string memory) {
        string memory message = "The Vehicle has just Stopped";
        return message;
    }

    function service() public pure virtual returns (string memory) {
        string memory message = "The Vehicle is being serviced";
        return message;
    }
}

// Requirement 2) Next Create following Child contracts for a different type of vehicles, that inherits Vehicle Cars, Truck, MotorCycle
contract Cars is Vehicle {
    function service() public pure virtual override returns (string memory) {
        string memory message = "car is being serviced";
        return message;
    }
}

contract Truck is Vehicle {
    function service() public pure virtual override returns (string memory) {
        string memory message = "Truck is being serviced";
        return message;
    }
}

contract Motorcycle is Vehicle {
    function service() public pure virtual override returns (string memory) {
        string memory message = "Motorcycle is being serviced";
        return message;
    }
}

//Requirement 3) Then create smart contracts for “Alto Mehran, “ Hino, Yamaha, that may inherit the relevant smart contract(s) as in step 2.
contract AltoMehran is Cars {
    function service() public pure override returns (string memory) {
        string memory message = "Alto Mehran car is being serviced";
        return message;
    }
}

contract Hino is Truck {
    function service() public pure override returns (string memory) {
        string memory message = "Hino Truck is being serviced";
        return message;
    }
}

contract Yamaha is Motorcycle {
    function service() public pure override returns (string memory) {
        string memory message = "Yamaha Motorcycle is being serviced";
        return message;
    }
}

// Requirement 4) Create 3 Service Stations for each vehicle type, with the same function “vehicleService

contract ServiceStationCars {
    function vehicelService() public returns (string memory) {
        AltoMehran vehicle = new AltoMehran();
        return vehicle.service();
    }
}

contract ServiceStationTruck {
    function vehicelService() public returns (string memory) {
        Hino vehicle = new Hino();
        return vehicle.service();
    }
}

contract ServiceStationMotorCycle {
    function vehicelService() public returns (string memory) {
        Yamaha vehicle = new Yamaha();
        return vehicle.service();
    }
}
