CREATE TABLE [dbo].[CustomerTripAssignment]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [TripId] INT NOT NULL, 
    [CustomerId] INT NOT NULL, 
    CONSTRAINT [FK_CustomerTripAssignment_ToTrip] FOREIGN KEY ([TripId]) REFERENCES [Trip]([Id]), 
    CONSTRAINT [FK_CustomerTripAssignment_ToCustomer] FOREIGN KEY ([CustomerId]) REFERENCES [Customer]([Id]) 
)
