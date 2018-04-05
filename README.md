Hello! 🐕

This is the code for the "Getting started with Ethereum development" post
on blog.cofound.it.

To get this code running, first do:

```
$ npm install
```

Then, go to the `my-truffle-project` directory and compile the contract:

```
$ cd my-truffle-project
$ npx truffle compile
```

Make sure that Ganache is running on `127.0.0.1:7545` and then deploy
the contract:

```
$ npx truffle migrate
```

Once that's done, you can run the console to interact with your contract.

```
$ npx truffle console
```

To get the contract instance, do `Billboard.deployed().then(x => billboard = x)`.
The `billboard` variable will hold your contract instance.
