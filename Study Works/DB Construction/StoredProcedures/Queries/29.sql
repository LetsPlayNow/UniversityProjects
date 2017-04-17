CREATE PROCEDURE GetCompaniesNameByPublishingHouse @PublishHouseName as VARCHAR(20)
AS
	SELECT Deliveries.Name_company, Publishing_house.Publish
	FROM Deliveries
	JOIN Purchases on Purchases.Code_delivery = Deliveries.Code_delivery
	JOIN Books on Books.Code_book = Purchases.Code_book
	JOIN Publishing_house on Publishing_house.Code_publish = Books.Code_publish
	WHERE Publishing_house.Publish = @PublishHouseName
GO
