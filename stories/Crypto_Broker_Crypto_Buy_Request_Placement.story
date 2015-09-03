Story: Crypto Broker Crypto Buy Request Placement

In order to buy Crypto currency from my selected Crypto Broker
  As a Crypto Customer
  I need to place a Buy Request specifying the terms of the Transaction
Using the Crypto Customer Wallet Android plugin
  And the Crypto Customer Wallet Module Java plugin
  And the Crypto Broker Crypto Buy Request Contract Java plugin
  And the Crypto Broker Network Service Java plugin

Scenario: Place a Crypto Buy Request to be paid with Fiat Cash in Hand
  Given that I've already selected a Crypto Broker
  When I create a new Crypto Buy Business Transaction
    And I specify that the amount of Crypto that I want to Buy
    And I specify the exchange rates for the Transaction
    And I specify that the payment method is to Give Cash On Hand
  Then Fermat should register the Buy Request for the Transaction
    And it should send the Contract through the Network

Scenario: Place a Crypto Buy Request to be paid with Fiat Bank in Hand
  Given that I've already selected a Crypto Broker
  When I create a new Crypto Buy Business Transaction
    And I specify that the amount of Crypto that I want to Buy
    And I specify the exchange rates for the Transaction
    And I specify that the payment method is to Make a Fiat Bank Deposit
  Then Fermat should register the Buy Request for the Transaction
    And it should send the Contract through the Network
