﻿CREATE TABLE [Category] (
    [CategoryID] INTEGER IDENTITY(1,1) PRIMARY KEY,
    [CategoryName] VARCHAR(100) NULL
);
GO

CREATE TABLE [Users] (
    [UserID] INTEGER IDENTITY(1,1) PRIMARY KEY,
	[UserName] VARCHAR(100) NULL,
    [Password] VARCHAR(100) NULL,
    [IsAdmin] VARCHAR(100) NULL,
    [IsActive] VARCHAR(100) NULL,
	[Image] VARCHAR(100) NULL,
    [FullName] VARCHAR(100) NULL,
    [Email] VARCHAR(100) NULL,
    [Address] VARCHAR(100) NULL,
    [City] VARCHAR(100) NULL,
    [Telephone] VARCHAR(100) NULL,
);
GO

CREATE TABLE [Products] (
	[ProductID] INTEGER IDENTITY(1,1) PRIMARY KEY,
	[CategoryID] INTEGER REFERENCES dbo.Category(CategoryID),
	[ProductName] VARCHAR(500) NULL,
	[Tittle] VARCHAR(500) NULL,
	[Description] VARCHAR(MAX) NULL,
	[Quantity] INTEGER NULL,
	[Color] VARCHAR(100) NULL,
	[Image1] VARCHAR(150) NULL,
	[Image2] VARCHAR(150) NULL,
	[Image3] VARCHAR(150) NULL,
	[Image4] VARCHAR(150) NULL,
	[Brand] VARCHAR(100) NULL,
	[Price] FLOAT NULL,
	[PriceDiscount] FLOAT NULL,
	[DiscountPercent] INTEGER
	)

CREATE TABLE [Product_Laptops] (
    [LaptopID] INTEGER IDENTITY(1,1) PRIMARY KEY,
	[ProductID] INTEGER REFERENCES dbo.Products(ProductID),
    [MemorySize] VARCHAR(150) NULL,
    [CPUModel] VARCHAR(150) NULL,
    [CPUSpeed] VARCHAR(150) NULL,
    [DisplayResolution] VARCHAR(150) NULL,
    [ScreenSize] VARCHAR(150) NULL,
    [ItemWeight] VARCHAR(150) NULL,
	[GraphicsCoprocessor] VARCHAR(150) NULL,
    [OS] VARCHAR(150) NULL,
    [RAMType] VARCHAR(150) NULL,
);

CREATE TABLE [Product_Camera] (
    [CameraID] INTEGER IDENTITY(1,1) PRIMARY KEY,
	[ProductID] INTEGER REFERENCES dbo.Products(ProductID),
    [ModelNumber] VARCHAR(150) NULL,
	[EyeAF] VARCHAR(150) NULL,
	[ImageSensorType] VARCHAR(150) NULL,
	[ImageSensorSize] VARCHAR(150) NULL,
	[MaxFocalLength] VARCHAR(150) NULL,
	[MinFocalLength] VARCHAR(150) NULL,
	[MaxAperture] VARCHAR(150) NULL,
	[EffectivePixels] VARCHAR(150) NULL,
	[WifiEnabled] VARCHAR(150) NULL
);

CREATE TABLE [Product_SmartPhones] (
    [SPhoneID] INTEGER IDENTITY(1,1) PRIMARY KEY,
	[ProductID] INTEGER REFERENCES dbo.Products(ProductID),
    [Screen] VARCHAR(150) NULL,
    [OS] VARCHAR(150) NULL,
	[RearCamera] VARCHAR(150) NULL,
	[FrontCamera] VARCHAR(150) NULL,
	[CPU] VARCHAR(150) NULL,
	[RAM] VARCHAR(150) NULL,
	[InternalMemory] VARCHAR(150) NULL,
	[Sim] VARCHAR(150) NULL,
	[Battery] VARCHAR(150) NULL
);

CREATE TABLE [Orders] (
	[OrderID] INTEGER IDENTITY(1,1) PRIMARY KEY,
	[UserID] INTEGER REFERENCES dbo.Users(UserID),
	[Payment] VARCHAR(100) NULL,
	[OrderDate] DATETIME NULL,
	[Total] FLOAT NULL,
	[billStatus] INTEGER NULL
	)

CREATE TABLE [Order_Details] (
	[OrderDetailsID] INTEGER IDENTITY(1,1) PRIMARY KEY,
	[OrderID] INTEGER REFERENCES dbo.Orders(OrderID),
	[ProductID] INTEGER REFERENCES dbo.Products(ProductID),
	[Quantity] INTEGER NULL,
	[SubTotal] FLOAT NULL
	)
	
CREATE TABLE [Feedback] (
	[feedbackID] INTEGER IDENTITY(1,1) PRIMARY KEY,
	[ProductID] INTEGER REFERENCES dbo.Products(ProductID),
	[UserID] INTEGER REFERENCES dbo.Users(UserID),
	[Rating] INTEGER NULL,
	[Description] VARCHAR(500) NULL,
	[FeedbackDate] DATETIME NULL
)

CREATE TABLE [Coupon] (
	[CouID] INTEGER IDENTITY(1,1) PRIMARY KEY,
	[CouponName] VARCHAR(150) NULL,
	[DiscountPercen] INTEGER NULL
)

INSERT INTO Users VALUES('admin','123','TRUE','TRUE','user1.jpg','Admin','ipsum@luctus.edu','P.O. Box 321, 7430 Pellentesque Avenue','Cumberland County','(0171) 082 0892');
INSERT INTO Users VALUES('Admin123','Admin123','TRUE','FALSE','user2.jpg','Xander Heath','lorem@auctor.net','397-5632 Ut Avenue','Itterbeek','076 0952 0602');
INSERT INTO Users VALUES('block','123','FALSE','TRUE','user3.jpg','Khanh Nguyen','rutrum@Seddiamlorem.net','4916 Volutpat Avenue','Le Cannet','(025) 9094 8880');
INSERT INTO Users VALUES('khanhnq','123','FALSE','TRUE','user4.jpg','Kenyon Snow','amet@utnisi.org','Ap #714-7019 Commodo St.','Stewart','(016977) 4744');
INSERT INTO Users VALUES('Plzwu388','Mxxaju1340','TRUE','FALSE','user1.jpg','Dennis Jordan','sodales@diameu.com','Ap #968-5991 Viverra. St.','Åkersberga','(027) 5581 6257');
INSERT INTO Users VALUES('Lilrv639','Eygzai5941','FALSE','TRUE','user2.jpg','Eagan Stanton','Donec@Fusce.co.uk','Ap #368-7583 Rutrum Avenue','San Pedro','0500 987317');
INSERT INTO Users VALUES('Qanlm875','Vnqtxs5047','FALSE','FALSE','user3.jpg','Colton Joseph','molestie@Donecest.org','P.O. Box 901, 4241 Cursus Rd.','Pereto','0800 629318');
INSERT INTO Users VALUES('Cgpjm603','Ylljlg5447','TRUE','TRUE','user4.jpg','Griffin Knapp','arcu@arcuMorbi.ca','Ap #242-3189 Vehicula Street','GrivegnŽe','(0113) 604 7733');
INSERT INTO Users VALUES('Kaydq268','Dmjlxf5406','TRUE','FALSE','user2.jpg','Lucy Camacho','em@dignissimlacus.com','8789 Et, Street','Markham','(020) 0564 8606');
INSERT INTO Users VALUES('Qjguc206','Xybprw6945','FALSE','TRUE','user1.jpg','May Holloway','sem@dolorelit.edu','196-5809 Sociis St.','Pescopagano','0500 008344');


INSERT INTO Category VALUES('Laptop');
INSERT INTO Category VALUES('Smartphone');
INSERT INTO Category VALUES('Camera');


INSERT INTO Products VALUES('1','HP 14 Laptop, AMD 3020e, 4 GB RAM, 64 GB eMMC Storage','14.0-inch diagonal, HD (1366 x 768), micro-edge, BrightView display. Dual-core Intel® Celeron® processor','Stay productive and entertained from anywhere with the HP 14 Laptop. This Windows 10 laptop is lightweight and has a long-lasting battery*, the ideal combo for working all day, and while on the go. Lean into the dependable performance of the latest AMD processor and Radeon™ Graphics card, even on your busiest days or long streaming sessions.|See more of your entertainment on a 6.5 mm bezel, HD touchscreen while you store more of the content you love with 4 GB of RAM and 64 GB eMMC of storage. Windows 10 and in S Mode is the most secure Windows ever built with added protection against phishing and malware. Increase your efficiency and productivity with pre-downloaded apps like Microsoft Office 365 and 25 GB of storage through Dropbox (both included with a free one-year subscription). |Work and learn remotely with integrated features like the HP True Vision camera, dual digital mics, and customer tuned dual speakers. With a 1-year limited hardware warranty, designed for energy efficiency, and built with sustainable practices, this HP computer laptop is made with the modern consumer in mind.','11','Jet Black','1.jpg','2.jpg','3.jpg','4.jpg','Hp','279','223','20');
INSERT INTO Products VALUES('1','HP 14" HD BrightView Micro-Edge Laptop, Intel Celeron N4020','14.0-inch diagonal, HD (1366 x 768), micro-edge, BrightView display. Intel® UHD Graphics, Wi-Fi 5 (2x2) & Bluetooth® 5.0','Stay productive and entertained from anywhere with the HP 14 Laptop. This Windows 10 laptop is lightweight and has a long-lasting battery*, the ideal combo for working all day, and while on the go. Lean into the dependable performance of the latest AMD processor and Radeon™ Graphics card, even on your busiest days or long streaming sessions.|See more of your entertainment on a 6.5 mm bezel, HD touchscreen while you store more of the content you love with 4 GB of RAM and 64 GB eMMC of storage. Windows 10 and in S Mode is the most secure Windows ever built with added protection against phishing and malware. Increase your efficiency and productivity with pre-downloaded apps like Microsoft Office 365 and 25 GB of storage through Dropbox (both included with a free one-year subscription). |Work and learn remotely with integrated features like the HP True Vision camera, dual digital mics, and customer tuned dual speakers. With a 1-year limited hardware warranty, designed for energy efficiency, and built with sustainable practices, this HP computer laptop is made with the modern consumer in mind.','6','Silver','5.jpg','6.jpg','7.jpg','8.jpg','Hp','275','220','20');
INSERT INTO Products VALUES('1','HP ProBook 440 G7 14" Notebook - 1920 x 1080 - Core i5','Amazon Business : For business-only pricing, quantity discounts and FREE Shipping. Register a free business account','Full-featured, thin, and light, the reliable HP ProBook 440 offers essential commercial features at an affordable price to every business. |Automatic security solutions, powerful performance, and long battery life help keep your business productive.Ideal for professionals in corporate settings or small to medium businesses, wanting an affordable combination of innovation, essential security and multimedia capabilities Windows 10 or other operating systems available Ready to meet the demands of your day Equipped with the latest 10th Gen Intel® processor, long battery life, and speedy connectivity, the multi-tasking HP ProBook 440 laptop is ready to get you through your deadline-driven workday. |Multi-layered security protection Your growing business requires the protection of a PC with commercial-grade security features. The HP ProBook 440 is enhanced with security and privacy features from the BIOS up. Proven reliability The ultraslim HP ProBook 440 opens 180° and passed 19 MIL-STD 810G tests. It features a durable and stylish aluminum cover that holds the near borderless display and a CNC keyboard deck. Windows 10 or other operating systems available . |Manufacturer: HP Inc. Manufacturer Part Number: 8WE42UT#ABA. Brand Name: HP. Product Line: ProBook. Product Series: 440 G7. Product Name: ProBook 440 G7 Notebook PC. Product Type: Notebook. [Processor & Chipset] Processor Manufacturer: Intel. Processor Type: Core i5. Processor Generation: 10th Gen. Processor Model: i5-10210U. Processor Speed: 1.60 GHz. Maximum Turbo Speed: 4.20 GHz. Processor Core: Quad-core (4 Core). [Memory] Standard Memory: 8 GB. |Maximum Memory: 32 GB. Memory Technology: DDR4 SDRAM. Number of Total Memory Slots: 2. Number of Occupied Memory Slots: 1. Intel Optane Memory Ready: Yes. [Storage] Drive Type: SSD. Total Solid State Drive Capacity: 256 GB. [Display & Graphics] Scre','8','Jet Black','9.jpg','10.jpg','11.jpg','12.jpg','Hp','859','833','7');
INSERT INTO Products VALUES('1','HP Chromebook 11 G7 EE 11.6" Chromebook','HP SMART Buy Chromebook G7 CelN4000 11 4GB/16 PC Intel CN4000, 11.6 HD AG LED SVA, UMA, Webcam, 4GB LPDDR4, 16GB eMMC, AC+BT, 2C Batt, Chrome OS, 1yr wrty U.S and  English localization','HP SMART Buy Chromebook G7 CelN4000 11 4GB/16 PC Intel CN4000, 11.6 HD AG LED SVA, UMA, Webcam, 4GB LPDDR4, 16GB eMMC, AC+BT, 2C Batt, Chrome OS, 1Yr wrty U.S. - English localization','7','Jet Black','13.jpg','14.jpg','15.jpg','16.jpg','Hp','249.99','225.99','10');
INSERT INTO Products VALUES('1','HP 11.6" Stream11 Pro G3 N3060 4G','Sleek style, quiet operation. Budget friendly, classroom ready, Extra security','Upgrade classroom learning with the thin, light, and powerful HP Stream 11 Pro designed for K-12 students. Take learning to the next level with Windows 10 Pro while maximizing collaboration using optional Microsoft OneDrive cloud storage and stable and reliable WLAN3 connectivity.','14','Jet Black','17.jpg','18.jpg','19.jpg','20.jpg','Hp','566.88','515.88','9');
INSERT INTO Products VALUES('1','ZenBook Duo Dual Screen Laptop, 14" FHD Touch Display, ScreenPad Plus','ScreenPad Plus Touch Display. 14 inch Full HD IPS Level Wideview Display, Intel Core i7-1165G7 Processor (12M Cache, up to 4.7 GHz, 4 cores)','ZenBook Duo 14 is no lightweight when it comes to performance. It harnesses the power of the latest 11th Generation Intel Core processors combined with plenty of fast RAM plus Intel Iris Xe. Theres also an ultrafast PCIe SSD to ensure fast boot times and rapid app loads. |And gives you an immersive viewing experience, with a four-sided frameless NanoEdge display, 400 nits, ultraslim bezels for an expansive 93% screen-to-body ratio. Its also PANTONE Validated for professional-grade color accuracy, and TUV Rheinland-certified for low blue-light emissions.','19','Jet Black','21.jpg','22.jpg','23.jpg','24.jpg','Asus','799.99','721.99','10');
INSERT INTO Products VALUES('1','ASUS 14 Laptop, AMD 3020e, 4 GB RAM, 64 GB eMMC Storage','HIGH PERFORMANCE – Power through even your busiest days with the AMD 3020e processor. DEPENDABLE STORAGE – Save more of your photos, videos, and documents with 4 GB DDR4-2400 SDRAM of memory and 64 GB eMMC of storage','Stay productive and entertained from anywhere with the HP 14 Laptop. This Windows 10 laptop is lightweight and has a long-lasting battery*, the ideal combo for working all day, and while on the go. Lean into the dependable performance of the latest AMD processor and Radeon™ Graphics card, even on your busiest days or long streaming sessions. |See more of your entertainment on a 6.5 mm bezel, HD touchscreen while you store more of the content you love with 4 GB of RAM and 64 GB eMMC of storage. Windows 10 and in S Mode is the most secure Windows ever built with added protection against phishing and malware. Increase your efficiency and productivity with pre-downloaded apps like Microsoft Office 365 and 25 GB of storage through Dropbox (both included with a free one-year subscription). |Work and learn remotely with integrated features like the HP True Vision camera, dual digital mics, and customer tuned dual speakers. With a 1-year limited hardware warranty, designed for energy efficiency, and built with sustainable practices, this HP computer laptop is made with the modern consumer in mind.','7','Jet Black','25.jpg','26.jpg','27.jpg','28.jpg','Asus','367.99','349.99','5');
INSERT INTO Products VALUES('1','Dell XPS 9365 2-in-1 13.3in FHD Touchscreen Laptop PC ','Intel Core i7-7Y75 Core Processor (1.3GHz, up to 3.6 GHz with Turbo Boost, 4M cache). 16GB LPDDR3 SRAM - 512GB PCI-E Solid State Drive.','Your daily computing experience just got easier with the combined strength and unique style of the Dell XPS 9365 2-in-1 13.3" FHD Touchscreen Laptop PC. Enjoy true reliability on the road or at home with a simple, yet powerful value-packed Laptop that is comfortable in any setting. |The Intel Core i7-7Y75 Core Processor matched with the 16GB LPDDR3 SDRAM Memory makes the Dell XPS 9365 the speedy and efficient laptop you need. Personalize your experience with the integrated 13.3-inch Multi-Touch QHD Display (1920 x 1080) which brings unique colors and precision handling right to your fingertips. Additional features include a back-lit keyboard, built-in Webcam, Bluetooth 4.2 and Wi-Fi connectivity.| Its flexibility offers the option of being used as a tablet or a laptop and its 10-hour battery life means that it can last all day. The 512GB PCI-E Solid State Drive provides ample space to store all crucial data safely. The Dell XPS 9365 Laptop PC is pre-loaded with Windows 10 Pro (64-Bit) which offers a user-friendly interface.','10','Jet Black','29.jpg','30.jpg','31.jpg','32.jpg','Dell','1259.99','882.99','30');
INSERT INTO Products VALUES('1','Dell Latitude 5300 Laptop, 13.3" FHD (1920 x 1080) Non-Touch','Latitude 5300 Laptop 13.3" Non-Touch Screen. Intel Core i7 8th Gen i7-8665U Dual-Core Processor 1.9GHz (4.8GHz With Turbo Boost)','Latitude 5300 Laptop 13.3" Non-Touch Screen . Intel Core i7 8th Gen i7-8665U Dual-Core Processor 1.9GHz (4.8GHz With Turbo Boost). |256 GB SSD Hard Drive & 8GB RAM Memory. 1920x1080 FHD resolution Non-Touch with an integrated Webcam and an integrated graphics chip. Wireless Wifi & Bluetooth','1','Jet Black','33.jpg','34.jpg','35.jpg','36.jpg','Dell','999.99','799.99','20');
INSERT INTO Products VALUES('1','DELL Latitude 5000 5410 14-inch FHD Touch Screen 512GB i7','14 Inch FHD Touchscreen Display (1920x1080) 220 Nit Anti-Glare; Microphone & IR, WLAN WWAN Capable. 1.8GHz Intel Quad-Core i7-10610U (Up to 4.9GHz), Intel UHD Graphics 620 with Displayport Over Type-C','Take workplace productivity on the go with the 14" Latitude 5410 {Multi}Laptop in silver from Dell. Designed to provide enterprise-level performance in the field, this laptop features a 1.8 GHz Intel Core i7-10610U quad-core CPU and 16GB of DDR4 RAM. A 512GB M.2 SSD provides storage space for important files, or extra drives and other wired accessories can be connected via three USB 3.2 Gen 1 Type-A ports, or via a USB 3.2 Gen 2 Type-C port with DisplayPort and power delivery support. Cant stand clutter? |Cut the wires with Bluetooth 5.1 connectivity, as well as dual-band Wi-Fi 6. Users preferring a cabled internet connection can also take advantage of a flip-down RJ45 port supporting Gigabit Ethernet. Sporting a 14" 1920 x 1080 anti-glare LCD touchscreen, the Dell Latitude 5410 uses integrated Intel UHD 620 graphics. |You can use the HDMI 2.0 or USB Type-C port to extend or mirror content to an additional display, and an integrated microSD card reader makes media access a cinch. In addition to an integrated microphone and dual 2W speakers, the 5410 also sports a 720p IR HD Webcam for video conferencing. A privacy shutter even blocks the lens when its not in use. |And, employing the cameras built-in IR scanning capabilities, users can log in using facial recognition. Likewise, using the Latitudes fingerprint reader, you can skip the passwords with just a touch of your finger. Or, validate user credentials using a traditional or contactless NFC SmartCard reader. Further security measures include a TPM chip and a physical lock slot. Additionally, Intels vPro system management platform offers increased hardware security, as well out-of-band manageability to ensure system integrity. The Dell Latitude 5410 runs on the Windows 10 Home 64-bit operating system.','7','Gray','37.jpg','38.jpg','39.jpg','40.jpg','Dell','1399','1302.99','7');
INSERT INTO Products VALUES('1','Dell XPS 13 Laptop 13.3", UHD, Intel Core i7-8565U','Available at a lower price from other sellers that may not offer free Prime shipping.','Worlds smallest 13-inch laptop; The smaller, thinner, lighter 4K Ultra HD XPS 13 is ready for take-off and also Star performances with the new 8th Gen Intel Core processors, more Cores mean increased performance. |Worlds most innovative HD Webcam; weve miniaturised the HD Webcam to fit it into the top inginityedge border making the 13-inch laptop more gorgeous than ever. Next-gen Dell Cinema; colors burst, sound rumbles, streaming is Seamless and Dell has combined specialized hardware and software to make every scene more stunning.','13','Jet Black','41.jpg','42.jpg','43.jpg','44.jpg','Dell','1750','1627.99','7');
INSERT INTO Products VALUES('1','Dell XPS 13 9360 13.3" Laptop QHD+ Touchscreen','7th generation Intel Core i7-7500u with Turbo Boost up to 3.5 GHz Processor. 16GB lpddr3-1866mhz included. 512GB SSD storage; No Optical Drive included','13.3" QHD+ (3200 x 1800) infinityedge touch Display. Windows 10 operating system; ROSE GOLDThe XPS 13 cleverly fits a stunning 13.3-Inch display in an 11-inch size laptop, making the it the smallest 13-inch laptop on the planet.|The XPS 13 has a unique virtually borderless InfinityEdge display, with only a 5.2mm bezel on the top and both sides. Thats the thinnest frame on a notebook today.','14','ROSE GOLD','45.jpg','46.jpg','47.jpg','48.jpg','Dell','1999.11','1899.99','10');
INSERT INTO Products VALUES('1','Latitude 7420 I5 11-1135 G7 8GB SSD 14IN W10 WLS TCH','UPC: 884116384472. Weight: 4.950 lbs.','Dell Latitude 7420 (LATI7420W3WJ5/W3WJ5) TOUCH Anti Glare 2-IN-1 Laptop 14.0 FHD AR+AS, SLP, Touch, WVA, 300 nits, FHD IR Cam,Mic,WLAN Only,Carbon Fiber,Pen Support, 11th Generation Intel Core i5-1135G7 (4 Core, 8M cache, base 2.4GHz, up to 4.2GHz), 8GB, 2666 MHz, DDR4 Non-ECC, Integrated, M.2 256GB PCIe NVMe Class 35 Solid State Drive, Windows 10 Pro 64bit English, French, Spanish, Intel Iris Xe Graphics, Intel Wi-Fi 6 AX201 2x2 802.11ax 160MHz + Bluetooth 5.1 Wireless Card|No Removable CD/DVD Drive, Single Point keyboard English US with backlit, No Mouse, 65W Type-C Epeat Adapter, 4 Cell 63Whr ExpressChargeTM Capable Battery, Palmrest, Fingerprint Reader, Carbon Fiber, Thunderbolt 4, ME Disable Manageability, No Microsoft Office License Included-30 day Trial Offer Only, 3 Years Hardware Service with Onsite/In-Home Service After Remote Diagnosis (Disti SNS)','1','Jet Black','49.jpg','50.jpg','51.jpg','52.jpg','Dell','2642.68','2457.99','7');
INSERT INTO Products VALUES('1','MSI GS75 Stealth-1074 17.3" 144Hz 3ms Ultra Thin','17.3" Fhd (1920x1080), 144Hz 3ms, IPS-Level 1920x1080 16: 9 NVIDIA GeForce RTX2080 Max-Q 8G GDDR6. Core i7-9750h 2.6 - 4.5GHz Intel PTT.','1TB NVMe SSD 32GB (16G*2) DDR4 2666MHz 2 Sockets; Max Memory 64GB. Thunderbolt 3*1; USB-C Gen1 *1 USB 3.2 Gen2 *3 LAN Intel 9560 Jefferson Peak (2x2 802.11 AC) bt 5 720P HD Webcam. |Ac adapter Win 10 Multi-language webcam 4 Cell (82Whr) Li-Polymer 720P HD Webcam keyboard silky glass touchpad USB steel Series per-Key RGB with Anti-Ghost key (84 key)The premium glass touchpad comes with an enlarged surface area and an extremely smooth finish, perfect for all your for click, scroll, and multi-touch gesture needs. |Have all you games and data on-the-go with up to 3 M.2 SSD storage slots, all within a slim and sleek chassis. The fastest gaming display brings you the most vibrant visuals so you never miss a beat.','11','Jet Black','53.jpg','54.jpg','55.jpg','56.jpg','Msi','2777.68','2499.22','10');
INSERT INTO Products VALUES('1','Stealth NB I7/2.6 6C 15.6 32GB 1TB W10P','UPC: 824142199824. Weight: 7.590 lbs. + $287.65 Shipping & Import Fees Deposit to Vietnam Details. ','New: A brand-new, unused, unopened, undamaged item in its original packaging (where packaging is applicable). |Packaging should be the same as what is found in a retail store, unless the item is handmade or was packaged by the manufacturer in non-retail packaging, such as an unprinted box or plastic bag. ','12','Jet Black','57.jpg','58.jpg','59.jpg','60.jpg','Msi','2259','2030.44','10');
INSERT INTO Products VALUES('1','GS65 STEALTH-838 I7/2.6 32GB 512GB W10P','UPC: 824142199824. Weight: 7.590 lbs. + $287.65 Shipping & Import Fees Deposit to Vietnam Details. ','Amazon.com Return Policy:You may return any new computer purchased from Amazon.com that is "dead on arrival," arrives in damaged condition, or is still in unopened boxes, for a full refund within 30 days of purchase. Amazon.com reserves the right to test "dead on arrival" returns and impose a customer fee equal to 15 percent of the product sales price if the customer misrepresents the condition of the product. |Any returned computer that is damaged through customer misuse, is missing parts, or is in unsellable condition due to customer tampering will result in the customer being charged a higher restocking fee based on the condition of the product. |Amazon.com will not accept returns of any desktop or notebook computer more than 30 days after you receive the shipment. New, used, and refurbished products purchased from Marketplace vendors are subject to the returns policy of the individual vendor.','20','Jet Black','61.jpg','62.jpg','63.jpg','64.jpg','Msi','2249.99','1574.99','30');
INSERT INTO Products VALUES('1','Acer Predator Helios 300 Gaming Laptop, 15.6" Full HD IPS','Latest 7th Generation Intel Core i7 Processor 2.8GHz with Turbo Boost Technology up to 3.8GHz | Windows 10 Home 64-bit. 15.6" Full HD (1920 x 1080) widescreen IPS display, Red Backlit Keyboard','Acer Predator Helios 300 G3-571-77QK Gaming Notebook comes with these high level specs: 7th Generation Intel Core i7 Processor 2.8GHz with Turbo Boost Technology up to 3.8GHz, 15.6" Full HD (1920 x 1080) widescreen LED-backlit IPS display, NVIDIA GeForce GTX 1060 with 6 GB of dedicated GDDR5 VRAM, 16GB DDR4 2400MHz Memory, 256GB SSD, Acer TrueHarmony Technology Sound System|Two Built-in Stereo Speakers, Secure Digital (SD) card reader, 802.11ac WiFi featuring 2x2 MIMO technology (Dual-Band 2.4GHz and 5GHz), Bluetooth 4.0, 10/100/1000 Gigabit Ethernet LAN (RJ-45 port), HD Webcam (1280 x 720) supporting High Dynamic Range (HDR), 1 - USB 3.1 (Type C) port (Gen 1 up to 5 Gbps), 1 - USB 3.0 Port (featuring Power-off Charging), 2 - USB 2.0 Ports, 1 - HDMI 2.0 Port with HDCP Support, 4-cell Li-ion Battery (3220 mAh), Up to 7-hours Battery Life, 5.95 lbs. | 2.7 kg (system unit only) (NH.Q28AA.001)','12','Black','65.jpg','66.jpg','67.jpg','68.jpg','Acer','1389','972.33','30');
INSERT INTO Products VALUES('1','Acer Aspire 5 Slim Laptop, 15.6 inches Full HD IPS Display','16GB DDR4 DRAM Memory & 256GB SSD | Extra empty expandable hard drive slot for 2.5" hard drives. Up to 7-hours of battery life','Acer Aspire 5 A515-43-R19L comes with these high level specs: AMD Ryzen 3 3200U Dual-Core Processor 2.6GHz with Precision Boost up to 3.5GHz (Up to 4MB L3 Cache), Windows 10 in S mode, 15.6" Full HD (1920 x 1080) widescreen LED-backlit IPS Display, AMD Radeon Vega 3 Mobile Graphics, 4GB DDR4 Memory, 128GB PCIe NVMe SSD, True Harmony Technology|Two Built-in Stereo Speakers, Acer Purified. Voice Technology with Two Built-in Microphones, 802.11ac Wi-Fi featuring 2x2 MIMO technology (Dual-Band 2.4GHz and 5GHz), 10/100/1000 Gigabit Ethernet LAN (RJ-45 port), Bluetooth 4.0, Back-lit Keyboard, HD Webcam (1280 x 720), 1 - USB 3.1 Gen 1 Port, 2 - USB 2.0 Ports, 1 - HDMI Port with HDCP support, Lithium-Ion Battery, up to 7.5-hours Battery Life, 3.97 lbs. | 1.8 kg (system unit only) (NX.HG8AA.001).','6','Silver','69.jpg','70.jpg','71.jpg','72.jpg','Acer','359','251.33','30');
INSERT INTO Products VALUES('1','Acer Aspire 5 A515-55-35SE, 15.6, 10th Gen Intel Core i3','10th Generation Intel Core i3-1005G1 Processor (Up to 3.4GHz) | 4GB DDR4 On-Board Memory | 128GB NVMe SSD. 15.6" Full HD (1920 x 1080) widescreen LED backlit IPS Display | Intel UHD Graphics','Acer Aspire 5 A515-55-35SE comes with these high level specs: 10th Generation Intel Core i3-1005G1 Processor 1.2GHz with Turbo Boost Technology up to 3.4GHz (4MB Smart cache), 15.6" Full HD (1920 x 1080) widescreen LED-backlit IPS Display, Intel UHD Graphics, 4GB DDR4 On-Board Memory, 128GB NVMe SSD, 1 - Available Hard Drive Bay, True Harmony Gen 2 Technology|Two Built-in Stereo Speakers, Acer Purified.Voice Technology with Two Built-in Microphones, Intel Wireless Wi-Fi 6 AX201 802.11ax Dual-Band 2.4GHz and 5GHz featuring 2x2 MU-MIMO technology (Max Speed up to 2.4Gbps), 10/100/1000 Gigabit Ethernet LAN (RJ-45 port), Bluetooth 5.0, Back-lit Keyboard, Acer Fingerprint Reader supporting Windows Hello, HD Webcam (1280 x 720), 1 - USB 3.1 (Type-C) Gen 1 port (up to 5 Gbps), 2 - USB 3.1 Gen 1 Port (one with Power-off Charging), 1 - USB 2.0 Port, 1 - HDMI Port with HDCP support, Lithium-Ion Battery, Up to 8-hours Battery Life, Windows 10 Home (S mode), 3.97 lbs. | 1.8 kg (system unit only) (NX.HSPAA.00A)','20','Silver','73.jpg','74.jpg','75.jpg','76.jpg','Acer','548','493.22','10');
INSERT INTO Products VALUES('1','Samsung Chromebook ProTouch Screen Laptop, 12.3 (XE510C24-K01US)','Display: 12.3" 2400x1600, 3:2,400nit. Intel Core M3 Processor 6Y30 ; 2.2Ghz Speed. 4GB LPDDR3 memory (on BD 4GB); Battery Life: 9 hours. Hard Drive: 32GB eMMC.Weight:2.381pounds. OS: Google chrome.Spill Resistant:Yes, 60cc','Work at the speed of life. The lightweight Chromebook Pro packs power with a fast and efficient Intel Core m3 Easily run 3D games, video editing programs, and other advanced software.The Samsung Chromebook Pro works at the speed of life. |With the power of a Chromebook and the versatility of a tablet, the 360° rotating screen and Intel Core m3 processor help you get things done. Write and create more precisely with the built-in pen. Access your favorite apps right on your Samsung Chromebook Pro. Whether you’re working, playing, or doing both at once, keep going from anywhere, even when you’re offline.','12','Jet Black','77.jpg','78.jpg','79.jpg','80.jpg','Samsung Electronics','349.95','332.5','5');
INSERT INTO Products VALUES('2','Apple iPhone 12','In the last months of 2020,  Apple  has officially introduced to users as well as iFan new generation iPhone 12 series with a series of breakthrough features, completely transformed design, powerful performance and one of them. is  iPhone 12 64GB .','Performance goes beyond any limit: Apple has equipped its latest chip (as of 11/2020) for the iPhone 12 that is  A14 Bionic , produced on a 5-nm process with more stable performance than the A13 chip equipped on the pre-version for  iPhone 11 .','11','Blue','81.jpg','82.jpg','83.jpg','84.jpg','Apple','1129.99','959.99','15');
INSERT INTO Products VALUES('2','iPhone 13 Pro 5G 512GB','Apples newest iPhones with updated cameras, new colors, smaller notches, and faster A15 chip. Pre-order now, launch on September 24.','Introduced on September 14, the iPhone 13 and iPhone 13 mini are Apples newest flagship iPhones on the more affordable end, and are being sold alongside the more expensive iPhone 13 Pro and iPhone 13 Pro Max. |The iPhone 13 and iPhone 13 mini are ideal for those who dont need pro-level camera features.','8','Black','85.jpg','86.jpg','87.jpg','88.jpg','Apple','1299.99','1169.99','10');
INSERT INTO Products VALUES('2','iPhone 11','Performance is still equivalent to Pro Max version. Although it has a cheaper price, but not so that the iPhone 11 is cut down in terms of configuration.','iPhone 11 256GB  is a machine with a "comfortable" price in the iPhone 3   just introduced by Apple and if you want to experience new camera upgrades or top performance but do not want to spend too much money then This is really the first choice for you.','14','Jet Black','89.jpg','90.jpg','91.jpg','92.jpg','Apple','956.99','860.99','10');
INSERT INTO Products VALUES('2','IPhone SE (2020)','iPhone SE 256GB 2020  was finally released by  Apple  , with its compact appearance copied from the  iPhone 8  but with a strong performance with the A13 Bionic processor, an attractive price promises to be the factor " attract customers ”of   cult smartphones coming from the Apples house.','Light weight for sure, comfortable to use. iPhone SE 2020 has a rather small design when placed next to todays large screen smartphones   , but for those who do not like the  bezel-less design  and large screen, this will be the best choice for them. |With a 4.7-inch screen, a rather thick screen border,   Touch ID fingerprint sensor , perfectly curved edges, iPhone SE 2020 brings a familiar grip,  compact size  for you to use with one hand. easy way. |The new Apple phone equipped with a 4.7-inch Retina display, although only HD resolution, still gives good display quality with True Tone technology that calibrates the color according to the surrounding environment.','7','Black','93.jpg','94.jpg','95.jpg','96.jpg','Apple','608.99','487.99','20');
INSERT INTO Products VALUES('2','iPhone XR','As an  iPhone  at a comfortable price, suitable for more customers, the  iPhone Xr is  still favorably equipped with a powerful Apple A12 chip, a rabbit-ear display and dust-proof water resistance.','LCD technology rabbit ears full screen. Unlike the iPhone Xs or Xs Max, this smartphone has an LCD screen.','10','Black','97.jpg','98.jpg','99.jpg','100.jpg','Apple','586.99','410.99','30');
INSERT INTO Products VALUES('2','Apple - 11-Inch iPad Pro (Latest Model)','15-DAY FREE & EASY RETURNS. If received today, the last day to return this item would be Oct 3.','iPad Pro features the powerful Apple M1 chip with next-level performance and all-day battery life.³ The Liquid Retina display on the 11-inch iPad Pro is not only gorgeous, but super portable.¹ 5G cellular models give you blazing speeds away from Wi-Fi.² |And a front camera with Center Stage keeps you in frame automatically during video calls. iPad Pro has pro cameras and a LiDAR Scanner for stunning photos, videos, and immersive AR. |Thunderbolt for connecting to high-performance accessories. And you can add Apple Pencil for note-taking, drawing, and marking up documents, and the Magic Keyboard for a responsive typing experience and trackpad.⁴','10','Silver','101.jpg','102.jpg','103.jpg','104.jpg','Apple','1799.99','1620.99','10');
INSERT INTO Products VALUES('2','Apple - Magic Keyboard for 12.9-inch iPad Pro (3rd, 4th, or 5th Generation)','15-DAY FREE & EASY RETURNS. If received today, the last day to return this item would be Oct 3.','The Magic Keyboard is the perfect companion for iPad Pro, now available in two colors. It features a comfortable, responsive typing experience, a trackpad that opens up new ways to work, a USB-C port for charging, backlit keys, and front and back protection. |With a floating cantilever design, iPad Pro attaches magnetically and allows you to smoothly adjust to the perfect viewing angle.','10','White','105.jpg','106.jpg','107.jpg','108.jpg','Apple','500.99','450.99','10');
INSERT INTO Products VALUES('2','Apple - 10.9-Inch iPad Air - Latest Model - (4th Generation)','15-DAY FREE & EASY RETURNS. If received today, the last day to return this item would be Oct 3.','iPad lets you do everything in powerful yet simple ways on the large multi-Touch display. |Run apps like Microsoft Office, Photoshop CC, and graphics-intensive games. iPad is ready for anything. Remarkably thin and light with a durable design, fast Wi-Fi and LTE, and all-day battery life.','10','Silver','109.jpg','110.jpg','111.jpg','112.jpg','Apple','699.99','664.05','5');
INSERT INTO Products VALUES('2','Xiaomi Redmi Note 10 Pro 8GB','The box includes the Machine, Manual, Sim tree, Case, Type C cable, Type A removable fast charger','Xiaomi Redmi Note 10 Pro version is designed by the company with a size that fits the users hand. Moreover, the design of this sophisticated and luxurious generation helps to attract all eyes at first sight. |The back of the device is designed with curved strokes on both sides to create a thin and solid feeling when holding. |The right corner of the back is printed with the name of the manufacturer Xiaomi, both creating a highlight for the product and placing it in a position where users can comfortably decorate the phone easily and conveniently.','10','Silver','113.jpg','114.jpg','115.jpg','116.jpg','Xiaomi','350.99','330.99','10');
INSERT INTO Products VALUES('2','Special Samsung Galaxy Z Fold2 5G Phone','Belonging to high-end smartphones, Samsung Galaxy Z Fold2 5G is refined by Samsung not only its luxurious and sophisticated appearance but also the powerful "interior" inside that makes this smartphone completely worthy to own.','A spectacular breakout with trendy design. The "backbone" part of the machine allows you to open and fold smoothly at many different angles, giving a solid, smoother feel, unlike the first generation Galaxy Fold.','1','Yellow copper','117.jpg','118.jpg','119.jpg','120.jpg','Samsung','2173.99','1739.99','20');
INSERT INTO Products VALUES('2','Samsung Galaxy A12 Phone','Impressing with a quartet of trendy cameras, stable performance for smoothness in all tasks, and impressive battery life,  Samsung Galaxy A12 (6GB / 128GB)  will be the best  smartphone  to buy in the segment. medium low price  Samsung .','Stylish and trendy design. Samsung Galaxy A12 is a smartphone aimed at young people with dynamic youthful colors, representing the individual characteristics of modern youth.','7','Blue','121.jpg','122.jpg','123.jpg','124.jpg','Samsung','200','190','5');
INSERT INTO Products VALUES('2','Samsung Galaxy Note 20 Ultra 5G White phone','Samsung Galaxy Note 20 Ultra 5G White Samsung  s flagship flagship model   is perfect in every way, from classy luxury design to the extreme performance hidden inside. More especially, the "powerful" S Pen of the Note line has now been raised to a new level.','Class design deserves super product. Samsung Galaxy Note 20 Ultra 5G has a beautiful design as a masterpiece. |Samsung has optimized every experience with a minimalist design with aluminum frame and 2 high-end glass, 4 sharp corners increase the masculine strength, but still feels comfortable and classy thanks to 2 Edge edges are cleverly curved.','13','White','125.jpg','126.jpg','127.jpg','128.jpg','Samsung','1304.99','1239.99','5');
INSERT INTO Products VALUES('2','Samsung Galaxy S21 5G phone','Celebrate the bustling new year with the Galaxy S21 series from Samsung . The standard version for this series is Samsung Galaxy S21 5G , featuring a borderless design, impressive camera cluster to top strong performance.','The new "outfit" is outstanding and luxurious.Outstanding with the newly designed rear camera cluster, the rectangular frame contains a set of 3 cameras that embraces the left edge of the smartphone , the curved frame is flexible, minimizes the protrusion compared to the back|Providing the overall look is harmonious and unique.Galaxy S21 has 3 main colors: Purple, white and gray. Version of Galaxy S21 + 5G also has 2 colors are: red and gold, combined with the rear camera frames containing yellow roses. For users to freely choose to suit their own style best.','14','Violet','129.jpg','130.jpg','131.jpg','132.jpg','Samsung','826.99','578.99','30');
INSERT INTO Products VALUES('2','Samsung Galaxy S21 Ultra 5G phone','The class is  sent by  Samsung through the   Samsung Galaxy S21 Ultra 5G smartphone with a series of upgrades and improvements not only on the outside but also the power inside, promising to fully meet the increasing demand of user.','Breakthrough in trendy design. Not only for communication and entertainment,  Samsung Galaxy S21 Ultra 5G is  also a fashion accessory that asserts the position of the owner. Slim and surprisingly slim appearance only 165.1 x 75.6 x 8.9 mm and weight 228 g despite having to "carry" a large battery.','1','Silver','133.jpg','134.jpg','135.jpg','136.jpg','Samsung','1437.99','948.99','30');
INSERT INTO Products VALUES('2','Samsung Galaxy M51 phone','Samsung continues to release a new smartphone of the Galaxy M generation called Samsung Galaxy M51 . This new design, although located in the mid-range segment, has been upgraded and improved by Samsung with an ultra-wide-angle camera, super battery capacity and luxurious and trendy appearance.','Modern and classy design. First impressions with the screen of the Galaxy M51 is the 6.7-inch wide Infinity-O display. This design style makes the selfie camera more compact with just a small circle and a borderless screen design increases the visibility of images. |In addition, the device also owns Super AMOLED Plus screen technology that brings sharp display quality, fresh images for you to enjoy attractive entertainment programs, enjoy blockbuster movies, play titles. favorite game extremely eye-catching.','11','Jet Black','137.jpg','138.jpg','139.jpg','140.jpg','Samsung','391.99','313.99','20');
INSERT INTO Products VALUES('2','Samsung Galaxy A21s phone','Samsung Galaxy A21s is a new mid-range phone from Samsung , with a trendy mole screen design, and a cluster of 4 rear cameras with up to 48 MP resolution that supports many attractive photography features.','High-end design, fingerprint sensor on the back. |Samsung Galaxy A21s owns a super borderless design following the 2020 trend with the edge of the screen and the mole-shaped front camera to help the user space be larger, less uncomfortable for users.','12','Blue','141.jpg','142.jpg','143.jpg','144.jpg','Samsung','229.55','202.88','7');
INSERT INTO Products VALUES('2','Samsung Galaxy A71 phone','After the A51, Samsung  continues to launch  Galaxy A71  as the next representative of Galaxy A 2020 smartphone generation. It is improved with a breakthrough super-close-up macro camera, 64 MP main camera with trendy and high-end design.','Big screen, extremely cool experience. Galaxy A71 owns Infinity-O screen overflow with the camera slot placed in the middle similar to the flagship Note 10 . |The plus point is that the camera slot has now been made very small, less noticeable, for a more comfortable viewing experience and less distraction.','20','Black','145.jpg','146.jpg','147.jpg','148.jpg','Samsung','392.88','356.99','9');
INSERT INTO Products VALUES('2','Samsung Galaxy Z Flip phone','Finally, after much time of waiting,  Samsung Galaxy Z Flip phone  was launched  by  Samsung at the Unpacked 2020 event. leading oil 2020.','Breakthrough with folding screen design. Samsung Galaxy Z Flip is designed with a folding screen design inspired by the Galaxy Fold product line that   has caused a lot of buzz in 2019.','12','Black','149.jpg','150.jpg','151.jpg','152.jpg','Samsung','1567.99','1486.66','5');
INSERT INTO Products VALUES('2','Phone OPPO Find X2','Buy Fashion Watches 40% off (without other promotions)','Following the great success of the Find X generation, OPPO  officially launched Find X2 with elegant lines from hardware design to software experience, promising a perfect beauty, a power to match.  |Find X2 owns a high-end AMOLED Ultra Vision screen with a size of  up to 6.78 inches with 2K + resolution, protected by a high-grade Corning Gorilla Glass 6.','6','Black','153.jpg','154.jpg','155.jpg','156.jpg','Oppo','860.99','791.99','9');
INSERT INTO Products VALUES('2','OPPO Reno4 Pro phone','OPPO Reno4 Pro is equipped with a large 6.5-inch super-bezel screen , a display ratio of up to 93.4%, pixel density reaches 402 ppi, reaching 100% of the DCI-P3 color range, which allows images to be displayed. the most detailed, sharp and vivid display.','Oppo Reno 4 Pro 5G 256GB 12GM RAM (GSM only, No CDMA) International Version - No Warranty (Blue). The Oppo Reno 4 Pro 5G runs on Android 10-based ColorOS 7.2 operating system. |It features a 6.5-inch full-HD+ AMOLED display with 90Hz refresh rate. The phone is powered by the Snapdragon 765G SoC. The Oppo Reno 4 Pro has a triple camera setup at the back with a 48-megapixel main camera, a 12-megapixel ultra-wide camera, and a 13-megapixel telephoto camera. There is a laser detection autofocus lens as well on board.. |Up front, the Oppo Reno 4 Pro 5G has a single hole-punch display cutout with a 32-megapixel selfie camera. The phone has 4,000mAh battery with 65W SuperVOOC 2.0 fast charging support. The Oppo Reno 4 Pro also supports an in-display fingerprint sensor, and offers connectivity options like Bluetooth, 5G, Wi-Fi and a USB Type-C port.','20','Black','157.jpg','158.jpg','159.jpg','160.jpg','Oppo','522.99','485.99','7');
INSERT INTO Products VALUES('2','OPPO Reno5 phone','OPPO  has just launched its latest generation OPPO Reno at the end of 2020','OPPO  has just launched its latest generation OPPO Reno at the end of 2020.  OPPO Reno5  is an impressive combination of performance and design, giving users a  phone that  integrates many camera technologies. |Top-notch, OPPO battery charger in a mid-range price. Beautiful design bold OPPO Reno Series. |It can be said that OPPO Reno5 is a phone model that shows the pinnacle of OPPOs design and crafting technology when the back surface is covered with Reno Glow layer with thousands of micro-glowing crystals creating an extremely attractive gradation effect. .','12','Silver','161.jpg','162.jpg','163.jpg','164.jpg','Oppo','376.99','350.55','7');
INSERT INTO Products VALUES('2','Phone OPPO A93','In September 2020, OPPO continues to launch a mid-range phone segment that is considered a continuation of OPPO A92 with many upgraded points such as performance','In September 2020, OPPO continues to launch a mid-range phone segment that is considered a continuation of OPPO A92 with many upgraded points such as performance, camera system and 18W fast charging capability with the name call OPPO A93 . |Outstanding performance with Helio P95. OPPO A93 is equipped with MediaTek Helio P95 chipset with CPU speed of 2.2 GHz with this power, the A93 will not disappoint you when it can work well with many heavy applications or scrolling pages are smooth. feels like theres no lag.','11','Black','165.jpg','166.jpg','167.jpg','168.jpg','Oppo','328.88','305.77','7');
INSERT INTO Products VALUES('2','OPPO A53 phone (2020)','OPPO A53 2020 is a mid- range smartphone newly launched by OPPO','OPPO A53 2020 is a mid- range smartphone newly launched by OPPO , impressing with a 90Hz perforated screen design, the latest Snapdragon 460 chip and an impressive 3-camera cluster, sold at an extremely affordable price. reasonable. |Modern design, luxury OPPO A53 is equipped with a 6.5-inch screen with an overflow design containing the selfie camera located in the top left corner to optimize the display space for lots of information, while keeping itself compact.','11','Black','169.jpg','170.jpg','171.jpg','172.jpg','Oppo','198.99','181.99','7');
INSERT INTO Products VALUES('2','Xiaomi Mi 10T Pro 5G phone','The 144 Hz refresh rate is one of the hallmarks of Mi 10T Pro, delivering up to 144 fps for maximum smoothness, enhancing every experience whether youre playing games, watching movies or just','Mi 10T Pro 5G  samples  smartphone  senior  Xiaomi  in 2020 was finally released with a series of parameters causing "overwhelmed": |Screen scanning frequency of 144 Hz, Snapdragon processor 865 and cluster camera terrible 108 MP included which is a pleasant price for the user. Smooth in every frame with 144 Hz refresh rate. |The 144 Hz refresh rate is one of the hallmarks of Mi 10T Pro, delivering up to 144 fps for maximum smoothness, enhancing every experience whether youre playing games, watching movies or just. Simply scroll through the web page to see the news.','5','Black','173.jpg','174.jpg','175.jpg','176.jpg','Xiaomi','567.99','526.77','7');
INSERT INTO Products VALUES('2','Xiaomi POCO X3 NFC phone','Breakthrough camera system, impressive','Following the success of its mid-range phone with a luxurious modern design, Xiaomi has launched the  Xiaomi POCO X3 NFC which brings many attractive features on a smartphone , quality camera cluster, Strong performance, amazing battery capacity and outstanding 33W fast charging. |The POCO X3s 4-camera cluster is located above the middle of the back with a 64 MP main sensor that supports impressive Night Mode for fast focus, noise reduction and better light capture for you the night was clear and detailed.','3','Gray','177.jpg','178.jpg','179.jpg','180.jpg','Xiaomi','288.99','266.66','5');
INSERT INTO Products VALUES('3','4K Mirrorless CameraPhoto and Video, 12-32mm Lens, Tripod Grip','20.3MP Micro-Four-Thirds Digital Live MOS Sensor. Delivers vibrant, high-contrast photos and sharp, smooth 4K video across a wide range of lighting conditions.','Intuitive Features for Beginners and Experts. Vertical video shooting is ideal for playback on smartphones. REC frame indicator ensures you are recording—no more missed takes. |Frame Marker allows you to compose your shot in various aspect ratios to suit your preferred social platforms. Livestream or make video calls simply by connecting via USB with the LUMIX Webcam Software (Beta). ','13','black','181.jpg','182.jpg','183.jpg','184.jpg','Panasonic','749.99','599.99','25');
INSERT INTO Products VALUES('3','EOS R Mirrorless 4K Video Camera (Body Only)','30.3MP CMOS sensor delivers incredible detail and gorgeous enlargements. Create enlargements all the way up to poster-size prints, or crop aggressively to frame a perfect shot in glorious detail.','Expand your photography skills with this 30.2-megapixel Canon mirrorless camera. |Equipped with an all-new mount that lets you use superior lens designs, it has a Dual Pixel AF system that transforms the shooting experience for novice users and professionals alike. |This full-frame Canon mirrorless camera has Ultra HD 4K30 video capabilities for crystal clear movies.','11','black','185.jpg','186.jpg','187.jpg','188.jpg','Nikon','1799.99','1619.11','10');
INSERT INTO Products VALUES('3','EOS RP Mirrorless 4K Video Camera (Body Only)','Dual Pixel CMOS AF with 4,799 manually selectable AF points. Offers fast, smooth, and precise autofocus that stays locked onto your subject, even if it is in motion, for both photos and videos.','The bright, high-contrast viewfinder lets you see the results before you shoot and features 2,36 million dots for amazing resolution.. |A pre-flash precedes the main flash, allowing the camera to meter available light, adjusting illumination to obtain the correct exposure. |Easily connect your camera to an HDTV for immediate movie playback. HDMI cable required and sold separately. Accepts SD, SDHC, SDXC formats. ','13','black','189.jpg','190.jpg','191.jpg','192.jpg','Canon','999.99','929.99','7');
INSERT INTO Products VALUES('3','EOS M50 Mirrorless Camera with EF-M f/3.5-6.3 IS STM Zoom Lens','EF-M 15-45mm f/3.5-6.3 IS STM zoom lens provides versatility. 24.1-megapixel resolution delivers incredible detail and gorgeous enlargements','Keep this Canon EOS kit on hand to capture memories with professional results. |The interchangeable lens camera features a 24.1MP CMOS sensor for incredibly crisp still shots and 4K UHD video recording to make it ideal for vloggers. |This Canon EOS kit features a 15-45mm lens that handles everything from wide-angle to telephoto zoom.','19','black','193.jpg','194.jpg','195.jpg','196.jpg','Canon','649.99','520.99','20');
INSERT INTO Products VALUES('3','D7500 DSLR 4K Video Two Lens Kit with and 70-300mm Lenses','AF-P DX 18-55mm VR and 70-300mm VR lenses included. 20.9-megapixel CMOS sensor delivers incredible detail and gorgeous enlargements','Born from a desire for flagship performance and innovation in a more compact and streamlined connected camera, the D7500 delivers the game-changing resolution, ISO range, image processing and energy efficiency of the award-winning D500 in an enthusiast-level DSLR. |Simply put, the D7500 is built to outperform any camera in its class with top-tier image quality, blazing speed, flawless autofocus, 4K Ultra HD video and pro-grade creative tools - all in a comfortable, rugged design. |This is a camera for the generation of creators.The D7500 uses the same 20.9 MP DX-format image sensor and EXPEED 5 image processing engine as the D500, taking your photos and videos to the next level. |Capture with phenomenal sharpness and tonality, especially in low light situations like concerts, sporting events, parties and events.','12','black','197.jpg','198.jpg','199.jpg','200.jpg','Nikon','1299.99','1040.99','20');
INSERT INTO Products VALUES('3','LUMIX G7 Mirrorless 4K Photo with 14-42mm f3.5-5.6 II Lens','LUMIX G VARIO 14-42mm f/3.5-5.6 II ASPH./MEGA O.I.S. lens  . 16.0-megapixel Live MOS sensor delivers sharp, detailed shots','Panasonic LUMIX G7 Mirrorless 4K Photo Digital Camera Body with 14-42mm f3.5-5.6 II Lens: |Shooting pictures on vacation, creating portraits and capturing special moments is easy thanks to a 16.0-megapixel Live MOS sensor and the included 14-42mm lens with optical image stabilization. . |High-definition video mode records arresting footage with up to 3840 x 2160 resolution. Also supports 1920 x 1080, 1280 x 720 and 640 x 480 resolutions for flexible shooting options.','9','black','201.jpg','202.jpg','203.jpg','204.jpg','Panasonic','499.99','455.99','9');
INSERT INTO Products VALUES('3','4K Mirrorless Camera for Photo and Video, 12-32mm Lens, Tripod Grip','20.3MP Micro-Four-Thirds Digital Live MOS Sensor. 4K 30p, Full-HD 60p Video Recording','Brings you everything you need to create a high-quality content, with the superior performance and portability you have come to expect from LUMIX. |Send content to your device with the press of a button by pairing your G100 with the LUMIX Sync app on your smartphone via Wi-Fi. Remote control and automatic GPS geotagging are also available. |Micro Four Thirds MOS sensor with the powerful image processing engine for great picture quality even in low light.','11','black','205.jpg','206.jpg','207.jpg','208.jpg','Panasonic','599.99','546.99','9');
INSERT INTO Products VALUES('3','Panasonic - LUMIX S5 Mirrorless Camera with 20-60mm F3.5-5.6 Lens','24.2MP 35mm full-frame CMOS sensor. Contrast + DFD AF with 225-area focus points','LUMIX S5 is a high-quality, high-performance hybrid full-frame mirrorless camera designed especially for content creators, helping you bring your ideas forward in breathtaking clarity and color. |Still photos and video come alive using the latest advances in image resolution, image stabilization, and autofocus, all in the lightweight, compact, durable body that is the signature of LUMIX. |Features high-speed (approx. 0.08 sec), high precision AF. Improved autofocus includes detection of the head as well as eyes, face, and body, to capture subjects with ease and precision.*','11','black','209.jpg','210.jpg','211.jpg','212.jpg','Panasonic','2299.99','2139.99','7');
INSERT INTO Products VALUES('3','Canon - EOS Rebel T7 DSLR Video EF-S 18-55mm and EF 75-300mm Lenses','EF-S 18-55mm f/3.5-5.6 standard zoom provides versatility. EF 75-300mm f/4-5.6 4x telephoto zoom lens to entry into telephoto photography','Take stunning pictures with vibrant colors using this EOS Rebel T7 camera. The built-in Wi-Fi makes printing and sharing pictures quick and easy, and the auto-focus system creates crisp images at a moments notice. |This EOS Rebel T7 camera takes Full HD video, allowing experiences to be captured with quality. Enjoy crisp, clean images over a broad spectrum of lighting conditions, even capturing great shots just before dawn and at dusk, when available light is often beautiful but scarce.','14','black','213.jpg','214.jpg','215.jpg','216.jpg','Canon','549.99','522.99','5');
INSERT INTO Products VALUES('3','Canon - PowerShot SX540HS 20.3-Megapixel Digital Camera','20.3-megapixel high-sensitivity CMOS sensor. 50x optical/4x digital zoom','This Canon PowerShot SX540HS digital camera features 50x optical zoom and integrated autofocus, so you can bring far-away subjects up close. |The 3" LCD makes it easy to review your shots and choose settings for your next photo. .','9','black','217.jpg','218.jpg','219.jpg','220.jpg','Canon','279.99','254.88','9');
INSERT INTO Products VALUES('3','Canon-EOS Rebel T7 DSLR Video Camera with 18-55mm Lens','EF-S 18-55mm f/3.5-5.6 IS II lens provides versatility. 24.1-megapixel CMOS sensor delivers incredible detail and gorgeous enlargements','Take professional-looking photos with this Canon DSLR camera bundle. The 24.1-megapixel CMOS sensor captures the smallest details, even in low light, and the optical image stabilizer technology ensures handheld shots are sharp. |The 18-55mm lens included in this Canon DSLR camera bundle is suitable for taking wide-angle pictures or zooming in for portraits. Upload, e-mail or text photos from your DSLR through your smartphone or tablet.* |Your smart device can also act as a second monitor as well as remote control. Smart device not included.','17','black','221.jpg','222.jpg','223.jpg','224.jpg','Canon','449.99','418.55','7');
INSERT INTO Products VALUES('3','Canon-EOS Rebel T8i DSLR Camera with EF-S and EF 50mm','Optical Viewfinder with approx 95percent viewing coverage. Use the EOS Utility Webcam Software (Mac and Windows) to turn your compatible Canon camera into a high-quality webcam','Never miss a moment of the action with this Canon EOS Rebel digital camera kit. The wide sensitivity range is ideal for use in almost all lighting conditions, while the 45-point face-detection autofocus system ensures high-quality images. |This Canon EOS Rebel digital camera kit features built-in Bluetooth and Wi-Fi connectivity for effortless transfer of your raw files to compatible smart devices . |Allows you to confidently capture everything from fast-action sports to moving wildlife. The autofocus area modes help you select the setting, which is best suited to your situation.','18','black','225.jpg','226.jpg','227.jpg','228.jpg','Canon','1149.98','920.99','20');
INSERT INTO Products VALUES('3','Canon - PowerShot SX740 HS 20.3-Megapixel Digital Camera ','3.0" tilt-type (180° up) LCD. 40x optical, 4x digital, 160x total zoom','Capture the moment with this Canon PowerShot SX740 digital camera. |The 40x optical zoom feature lets you capture faraway subjects, while the intelligent image stabilization technology ensures clear, stable images and videos. |This Canon PowerShot SX740 digital camera features 4K video recording capability that lets you capture memories in exquisite detail.Provides on-the-go convenience when you want to share your photos and videos with friends and family.','18','black','229.jpg','230.jpg','231.jpg','232.jpg','Canon','399.99','364.99','9');
INSERT INTO Products VALUES('3','Nikon-Z 6 II 4k Video Mirrorless Camera with NIKKOR Z','NIKKOR Z 24-70mm f/4 S lens. 24.5-megapixel CMOS sensor delivers incredible detail and gorgeous enlargements','This is what a hybrid still and video mirrorless camera is meant to be. 24.5MP BSI sensor and high-speed shooting with the buffer capacity to match. 4K Ultra HD video at 60p*. Outstanding low-light capabilities. |Next-generation autofocus. The power of dual processors. Two card slots. Tons of creative features. Flexible power options. Compatibility with a vertical battery grip. Wireless connectivity with smartphones and laptops and so much more.*8-Bit and DX-crop mode only. |From joyous facial expressions to fast-paced sports action, continuous-high mode ensures you get the shot even if it only lasts a fraction of a second.','5','black','233.jpg','234.jpg','235.jpg','236.jpg','Nikon','2599.99','2080.99','20');
INSERT INTO Products VALUES('3','Nikon-Z 7 II 4k Video Mirrorless Camera with NIKKOR Z','NIKKOR Z 24-70mm f/4 S lens. 45.7-megapixel CMOS sensor delivers incredible detail and gorgeous enlargements','This is the full-frame mirrorless camera for those who sweat every little detail. Theres the ultra-high resolution of 45.7 megapixels with no optical low-pass filter. The power of dual processors. 4K Ultra HD video at 60p. |The next-generation 493-point autofocus system. High-speed shooting with the buffer capacity to match. Two card slots. Tons of creative features. Flexible power options. Compatibility with a vertical battery grip. Wireless connectivity with smartphones and laptops and so much more.','18','black','237.jpg','238.jpg','239.jpg','240.jpg','Nikon','3599.99','3240.99','10');
INSERT INTO Products VALUES('3','Nikon-Z6 Mirrorless 4K Video Camera with NIKKOR Z 24-70mm Lens','NIKKOR Z 24-70mm f/4 S lens. 24.5-megapixel CMOS sensor delivers incredible detail and gorgeous enlargements','Produce dynamic stills and 4K videos with this 24.5-megapixel Nikon Z6 mirrorless camera. Its lightweight, compact body provides ergonomic, balanced handling and compatibility with 360 NIKKOR lenses via an FTZ mount. |The included 24-70mm lens of this Nikon Z6 mirrorless camera has a constant f/4 maximum aperture thats suitable for various photography applications. |Install Nikons SnapBridge app on a compatible phone or tablet for instant photo sharing, automatic backups and even remote camera triggering.¹','2','black','241.jpg','242.jpg','243.jpg','244.jpg','Nikon','2199.99','2002.99','9');
INSERT INTO Products VALUES('3','Nikon-Z50 Mirrorless Camera Two Lens with NIKKOR Z f/3.5-6.3 VR','NIKKOR Z DX 16-50mm f/3.5-6.3 VR and 50-250mm f/4.5-6.3 VR lenses. 20.9MP CMOS sensor delivers vividly detailed, high-resolution images','Tell your story creatively with this Nikon Z50 mirrorless digital camera kit. |The included 15-60mm and 50-250mm VR lenses in this kit let you capture a variety of scenes, while the 20.9MP sensor delivers high-speed performance and superior image quality. Built-in Wi-Fi and Bluetooth ensure easy sharing of photos and videos. |This Nikon Z50 mirrorless digital camera kit is compact and lightweight for portability. Feature a versatile zoom range and VR image stabilization, ideal for wide-angle shots, portraits, fast-action, HD video, and enhanced low-light capabilities.','3','black','245.jpg','246.jpg','247.jpg','248.jpg','Nikon','1199.99','840.99','30');
INSERT INTO Products VALUES('3','Nikon - A 7 II 4k Video Mirrorless Camera with NIKKOR','3.0" tilt-type (180° up) LCD. 40x optical, 4x digital, 160x total zoom','Brings you everything you need to create a high-quality content, with the superior performance and portability you have come to expect from LUMIX. |Send content to your device with the press of a button by pairing your G100 with the LUMIX Sync app on your smartphone via Wi-Fi. Remote control and automatic GPS geotagging are also available. |Micro Four Thirds MOS sensor with the powerful image processing engine for great picture quality even in low light.','2','black','249.jpg','250.jpg','251.jpg','252.jpg','Nikon','2599.99','2080.99','20');
INSERT INTO Products VALUES('3','Nikon - Z 5 w/ NIKKOR Z 24-200mm f/4-6.3 VR - Black','Intensively detailed 24MP full frame images and 4K UHD videos','Your full frame journey begins with the Z 5. Simple yet sophisticated, compact yet powerful, the Z 5 is built to grow with you. |It’s everything you’d expect from a full frame mirrorless camera —intense detail, expansive views, brilliant low light capabilities, 4K video and more—plus all the innovative tools you need to push the limits of your creativity. |Pairing the 24 megapixel Z 5 with the compact, all-in-one NIKKOR Z 24-200mm f/4-6.3 VR zoom lens, this kit gives you ultimate flexibility. Go where your inspiration takes you — capturing incredible 4K videos, wide-angle interiors, expansive landscapes, telephoto close-ups, and wildlife. And that’s just the beginning.','17','black','253.jpg','254.jpg','255.jpg','256.jpg','Nikon','2199.99','2090','5');
INSERT INTO Products VALUES('3','Canon - EOS 5D Mark IV DSLR Camera (Body Only)','100-32,000 ISO range (expandable up to 50-102,400) for crisp, clear photos even in low light','Step up your photography with the Canon EOS 5D Mark IV body. It has a 30.4-megapixel full-frame CMOS sensor and a 100-32,000 ISO range that lets you take large photos that are sharp and bright. |The Canon EOS 5D Mark IV body is ideal for shooting action photos with speeds of up to seven frames per second. Upload, e-mail or text photos from your DSLR through your smartphone or tablet.* |Your smart device can also act as a second monitor as well as remote control. Smart device not included.','4','black','257.jpg','258.jpg','259.jpg','260.jpg','Canon','2499.99','2275.99','9');

INSERT INTO Product_Laptops VALUES('1','4 GB','AMD Ryzen 5-5500U','2.6 GHz','1366 x 768 pixels','14 inches','3.24 lbs','NVIDIA GeForce','Windows 10 Home','DDR4 SDRAM');
INSERT INTO Product_Laptops VALUES('2','4 GB','AMD Ryzen 5-5600H','2.6 GHz','1366 x 768 pixels','14 inches','3.24 lbs','Integrated','Windows 10 S','DDR4 SDRAM');
INSERT INTO Product_Laptops VALUES('3','8 GB','Intel Core i5-10300H','1.6 GHz','1920 x 1080','14 inches','5.18 lbs','NVIDIA GeForce','Windows 10 Pro','DDR4 SDRAM');
INSERT INTO Product_Laptops VALUES('4','8 GB','10th Gen Intel Core i7-1065G7','1.6 GHz','1366 x 768','11.6 inches','2.93 lbs','NVIDIA GeForce','Windows 10','Unknown');
INSERT INTO Product_Laptops VALUES('5','4 GB','Intel Core i5-1135G7','1.6 GHz','1366x768 pixels','11.6 inches','4.84 pounds','NVIDIA GeForce','Windows 10 Pro','DDR4 SDRAM');
INSERT INTO Product_Laptops VALUES('6','4 GB','AMD Ryzen 7-4800H','2.6 GHz','1366 x 768 pixels','14 inches','3.24 lbs','NVIDIA GeForce','Windows 10 Home','DDR4 SDRAM');
INSERT INTO Product_Laptops VALUES('7','8 GB','Intel Core i5-1135G7','4.7 GHz','1920 x 1080 pixels','14 inches','3.46 lbs','NVIDIA GeForce','Windows 10 Home','DDR4 SDRAM');
INSERT INTO Product_Laptops VALUES('8','16 GB','Intel Core i7-10750H','1866 MHz','1920x1080','13.3 Inches','4.84 pounds','Integrated','Windows 10 Home','DDR4 SDRAM');
INSERT INTO Product_Laptops VALUES('9','8 GB','Intel Core i7-10510U','4.80 GHz','1920x1080','13.3 Inches','3.24 lbs','NVIDIA GeForce','Windows 10','DDR SDRAM');
INSERT INTO Product_Laptops VALUES('10','8 GB','AMD Ryzen 5-4600H','2.6 GHz','1366 x 768 pixels','11.6 inches','4.84 pounds','NVIDIA GeForce','Windows 10 Home','DDR4 SDRAM');
INSERT INTO Product_Laptops VALUES('11','16 GB','Intel Core i5-11400H','2133 MHz','3840 X 2160','13.3 inches','2.71 lbs','NVIDIA GeForce','Windows 10 Home','DDR4 SDRAM');
INSERT INTO Product_Laptops VALUES('12','16 GB','10th Gen Intel Core i7-1065G7','3.50 GHz','3200 x 1800','13.3 inches','4.84 pounds','Integrated','Windows 10 Pro','DDR SDRAM');
INSERT INTO Product_Laptops VALUES('13','16 GB','Intel Core i3-1005G1','2133 MHz','1366 x 768 pixels','14 Inches','3.6 pounds','NVIDIA GeForce','Windows 10 Pro','DDR4 SDRAM');
INSERT INTO Product_Laptops VALUES('14','32 GB','Intel Core i7-11800H','4.80 GHz','1920x1080','14 Inches','3.24 lbs','NVIDIA GeForce','Windows 10 Pro','DDR SDRAM');
INSERT INTO Product_Laptops VALUES('15','16 GB','10th Gen Intel Core i5-1035G1','2.6 GHz','1920x1080','15.6 inches','3.24 lbs','Integrated','Windows 10 Pro','DDR SDRAM');
INSERT INTO Product_Laptops VALUES('16','16 GB','Intel Core i7-11800H','3.50 GHz','1920x1080','15.6 inches','3.24 lbs','NVIDIA GeForce','Windows 10 Home','DDR4 SDRAM');
INSERT INTO Product_Laptops VALUES('17','16 GB','Intel Core i7-10750H','3.8 GHz','1920 x 1080 pixels','15.6 inches','5.95 lbs','NVIDIA GeForce','Windows 10','DDR4 SDRAM');
INSERT INTO Product_Laptops VALUES('18','4 GB','AMD Ryzen 7-3750H','3.52 GHz','1920x1080','15.6 inches','3.97 pounds','NVIDIA GeForce','Windows 10 S','DDR4 SDRAM');
INSERT INTO Product_Laptops VALUES('19','4 GB','10th Generation Intel Core i3-1005G1 Processor (Up to 3.4GHz)','3.4 GHz','1920x1080','15.6 inches','3.97 lbs','Integrated','Windows 10 S','DDR4 SDRAM');
INSERT INTO Product_Laptops VALUES('20','4 GB','Intel Core M-5Y10 Processor','2.2 GHz','2400x1600 pixels','12.3 inches','2.38 pounds','Intel HD Graphics 515','Chrome OS','DDR4 SDRAM');

INSERT INTO Product_SmartPhones VALUES('21','OLED , 6.1 ", Super Retina XDR','iOS 14','3 12 MP cameras','12 MP','Apple A14 Bionic 6 cores','6 GB','128 GB','1 Nano SIM & 1 eSIM , Support 5G','2815 mAh, with fast charging');
INSERT INTO Product_SmartPhones VALUES('22','OLED , 6.7 ", Super Retina XDR','iOS 14','3 12 MP  cameras','12 MP','Apple A14 Bionic 6 cores','6 GB','512 GB','1 Nano SIM & 1 eSIM , Support 5G','3687 mAh, with fast charging');
INSERT INTO Product_SmartPhones VALUES('23','IPS LCD , 6.1 ", Liquid Retina','iOS 14','2 12 MP cameras','12 MP','Apple A13 Bionic 6 cores','4 GB','256 GB','1 Nano SIM & 1 eSIM , Support 4G','3110 mAh, with fast charging');
INSERT INTO Product_SmartPhones VALUES('24','IPS LCD , 4.7 "','iOS 14','12 MP','7 MP','Apple A13 Bionic 6 cores','3 GB','256 GB','1 Nano SIM & 1 eSIM , Support 4G','1821 mAh, with fast charging');
INSERT INTO Product_SmartPhones VALUES('25','IPS LCD , 6.1 ", Liquid Retina','iOS 12','12 MP','7 MP','Apple A12 Bionic 6 cores','3 GB','64 GB','1 Nano SIM & 1 eSIM , Support 4G','2942 mAh, with fast charging');
INSERT INTO Product_SmartPhones VALUES('26','11.0" , Liquid Retina HD , IPS LCD , 2388 x 1668 Pixel','iPadS','10.0 MP + 12.0 MP','12.0 MP','Apple M1 chip, 16-core Neural Engine','8 GB','128 GB','Are not','Lithium polymer');
INSERT INTO Product_SmartPhones VALUES('27','11.0" , Liquid Retina HD , IPS LCD , 2388 x 1668 Pixel','Apple iPadOS','none','none','MJQL3LL/A','8 GB','128 GB','Are not','Lithium polymer');
INSERT INTO Product_SmartPhones VALUES('28','10.9" , Liquid Retina HD , IPS LCD , 2360 x 1640 Pixel','iPadOS','12.0 MP','7.0 MP','Apple GPU 4 cores','4 GB','64 GB','Are not','Lithium polymer');
INSERT INTO Product_SmartPhones VALUES('29','6.67", FHD+, AMOLED, 1080 x 2400 Pixel','','108.0 MP + 8.0 MP + 2.0 MP + 5.0 MP','16.0 MP','Snapdragon 732G','8 GB','128GB ','2, Nano SIM','5020 mAh + Lithium polymer');
INSERT INTO Product_SmartPhones VALUES('30','Main: Dynamic AMOLED, Sub: Super AMOLED , Main 7.59 "& Secondary 6.23", Full HD +','Android 10','3 12 MP cameras','10 MP','Snapdragon 865+ octa-core','12 GB','256 GB','1 Nano SIM & 1 eSIM , Support 5G','4500 mAh, with fast charging');
INSERT INTO Product_SmartPhones VALUES('31','PLS TFT LCD, 6.5", HD+','Android 10','Main 48 MP & Secondary 5 MP, 2 MP, 2 MP','8 MP','MediaTek Helio G35 8 cores','6 GB','128 GB','2 Nano SIM , Support 4G','5000 mAh, with fast charging');
INSERT INTO Product_SmartPhones VALUES('32','Dynamic AMOLED 2X , 6.9 ", Quad HD + (2K +)','Android 10','Main 108 MP & Secondary 12 MP, 12 MP, Laser AF sensor','10 MP','Exynos 990 8 cores','12 GB','256 GB','2 Nano SIM or 1 Nano SIM + 1 eSIM , Support 5G','4500 mAh, with fast charging');
INSERT INTO Product_SmartPhones VALUES('33','Dynamic AMOLED 2X , 6.2 ", Full HD +',' Android 11','Main 12 MP & Secondary 64 MP, 12 MP','10 MP','Exynos 2100 8 cores','8 GB',' 128 GB','2 Nano SIM or 1 Nano SIM + 1 eSIM , Support 5G','4000 mAh, with fast charging');
INSERT INTO Product_SmartPhones VALUES('34',' Dynamic AMOLED 2X , 6.8 ", Quad HD + (2K +)','Android 11','Main 108 MP & Secondary 12 MP, 10 MP, 10 MP','40 MP','Exynos 2100 8 cores','12 GB',' 128 GB','2 Nano SIM or 1 Nano SIM + 1 eSIM , Support 5G','5000 mAh, with fast charging');
INSERT INTO Product_SmartPhones VALUES('35','Super AMOLED Plus , 6.7 ", Full HD +','Android 10','Main 64 MP & Secondary 12 MP, 5 MP, 5 MP','32 MP','Snapdragon 730 octa-core','8 GB','128 GB','2 Nano SIM , Support 4G','7000 mAh, with fast charging');
INSERT INTO Product_SmartPhones VALUES('36','TFT LCD , 6.5 ", HD +',' Android 10',' Main 48 MP & Secondary 8 MP, 2 MP, 2 MP','13 MP','Exynos 850 8 cores',' 6 GB','64 GB','2 Nano SIM , Support 4G','5000 mAh, with fast charging');
INSERT INTO Product_SmartPhones VALUES('37','Dynamic AMOLED 2X , 6.2 ", Full HD +',' Android 11','Main 12 MP & Secondary 64 MP, 12 MP','10 MP','Exynos 2100 8 cores','8 GB',' 128 GB','2 Nano SIM or 1 Nano SIM + 1 eSIM , Support 5G','4000 mAh, with fast charging');
INSERT INTO Product_SmartPhones VALUES('38','TFT LCD , 6.5 ", HD +','Android 10',' Main 48 MP & Secondary 8 MP, 2 MP, 2 MP','13 MP','Exynos 850 8 cores','6 GB',' 64 GB',' 2 Nano SIM , Support 4G','5000 mAh, with fast charging');
INSERT INTO Product_SmartPhones VALUES('39','AMOLED , 6.78 ", Quad HD + (2K +)',' Android 10','Main 48 MP & Secondary 13 MP, 12 MP',' 32 MP','Snapdragon 865 octa-core',' 12 GB','256 GB','2 Nano SIM , Support 5G','4200 mAh, with fast charging');
INSERT INTO Product_SmartPhones VALUES('40','AMOLED , 6.5 ", Full HD +',' Android 10',' Main 48 MP & Secondary 8 MP, 2 MP, 2 MP',' 32 MP','Snapdragon 720G octa-core',' 8 GB','256 GB','2 Nano SIM , Support 4G',' 4000 mAh, with fast charging');
INSERT INTO Product_SmartPhones VALUES('41','AMOLED , 6.43 ", Full HD +',' Android 10',' Main 64 MP & Secondary 8 MP, 2 MP, 2 MP',' 44 MP','Snapdragon 720G octa-core','8 GB','128 GB','2 Nano SIM , Support 4G','4310 mAh, with fast charging');
INSERT INTO Product_SmartPhones VALUES('42',' AMOLED , 6.43 ", Full HD +',' Android 10','Main 48 MP & Secondary 8 MP, 2 MP, 2 MP','Main 16 MP & Secondary 2 MP','MediaTek Helio P95 8 cores',' 8 GB','128 GB','2 Nano SIM , Support 4G','4000 mAh, with fast charging');
INSERT INTO Product_SmartPhones VALUES('43','AMOLED , 6.43 ", Full HD +',' Android 10',' Main 64 MP & Secondary 8 MP, 2 MP, 2 MP',' 44 MP','Snapdragon 720G octa-core','8 GB','128 GB','2 Nano SIM , Support 4G','4310 mAh, with fast charging');
INSERT INTO Product_SmartPhones VALUES('44','IPS LCD , 6.67 ", Full HD +',' Android 10','Main 108 MP & Secondary 13 MP, 5 MP',' 20 MP','Snapdragon 865 octa-core',' 8 GB','256 GB','2 Nano SIM , Support 5G','5000 mAh, with fast charging');
INSERT INTO Product_SmartPhones VALUES('45','IPS LCD , 6.67 ", Full HD +',' Android 10',' Main 64 MP & Secondary 13 MP, 2 MP, 2 MP',' 20 MP','Snapdragon 732G octa-core',' 6 GB','128 GB','2 Nano SIM (SIM 1 with common memory card slot) , Support 4G',' 5160 mAh, with fast charging');

INSERT INTO Product_Camera VALUES('46','DC-G100KK','No','NMOS','Four Thirds (17.3 x 13 mm)','32 millimeters','12 millimeters','5.6 f/','21.77 megapixels','Yes');
INSERT INTO Product_Camera VALUES('47','3380C002','No','CMOS','35mm Full Frame (36 x 24 mm)','32 millimeters','12 millimeters','5.6 f/','30.3 megapixels','Yes');
INSERT INTO Product_Camera VALUES('48','3380C002','No','CMOS','35mm Full Frame (36 x 24 mm)','Up to 60 fps','12 millimeters','5.6 f/','26.2 megapixels','Yes');
INSERT INTO Product_Camera VALUES('49','2680C011','No','CMOS','APS-C (22.2 x 14.8 mm)','45 millimeters','15 millimeters','3.5 f/','24.1 megapixels','Yes');
INSERT INTO Product_Camera VALUES('50','13543','Yes','CMOS','APS-C (23.6 x 15.7 mm)','55 millimeters','18 millimeters','4.5 f/','20.9 megapixels','Yes');
INSERT INTO Product_Camera VALUES('51','DMC-G7KK','Yes','NMOS','Four Thirds (17.3 x 13 mm)','42 millimeters','14 millimeters','5.6 f/','16 megapixels','Yes');
INSERT INTO Product_Camera VALUES('52','DC-G100KK','No','NMOS','Four Thirds (17.3 x 13 mm)','32 millimeters','12 millimeters','5.6 f/','21.77 megapixels','Yes');
INSERT INTO Product_Camera VALUES('53','DC-S5KK','No','NMOS','35mm Full Frame (36 x 24 mm)','60 millimeters','20 millimeters','3.5 f/','24.2 megapixels','Yes');
INSERT INTO Product_Camera VALUES('54','2727C021','No','CMOS','APS-C (22.2 x 14.8 mm)','55 millimeters','18 millimeters','3.5 f/','24.1 megapixels','Yes');
INSERT INTO Product_Camera VALUES('55','1067C001','No','CMOS','Other','42 millimeters','12 millimeters','5.6 f/','20.3 megapixels','Yes');
INSERT INTO Product_Camera VALUES('56','2727C002','No','CMOS','APS-C (22.2 x 14.8 mm)','55 millimeters','18 millimeters','5.6 f/','24.1 megapixels','Yes');
INSERT INTO Product_Camera VALUES('57','3924C002','No','CMOS','APS-C (22.2 x 14.8 mm)','55 millimeters','18 millimeters','4 f/','24.1 megapixels','Yes');
INSERT INTO Product_Camera VALUES('58','2727C002','No','CMOS','APS-C (22.2 x 14.8 mm)','55 millimeters','18 millimeters','5.6 f/','24.1 megapixels','Yes');
INSERT INTO Product_Camera VALUES('59','1663','Yes','CMOS','35mm Full Frame (36 x 24 mm)','70 millimeters','24 millimeters','4 f/','24.5 megapixels','Yes');
INSERT INTO Product_Camera VALUES('60','1656','Yes','CMOS','35mm Full Frame (36 x 24 mm)','70 millimeters','24 millimeters','5 f/','45.7 megapixels','Yes');
INSERT INTO Product_Camera VALUES('61','1598','Yes','CMOS','35mm Full Frame (36 x 24 mm)','70 millimeters','24 millimeters','4 f/','24.5 megapixels','Yes');
INSERT INTO Product_Camera VALUES('62','1632','Yes','CMOS','APS-C (23.6 x 15.7 mm)','50 millimeters','16 millimeters','4.5 f/','20.9 megapixels','Yes');
INSERT INTO Product_Camera VALUES('63','1632','Yes','CMOS','APS-C (23.6 x 15.7 mm)','50 millimeters','16 millimeters','5.6 f/','20.9 megapixels','Yes');
INSERT INTO Product_Camera VALUES('64','1641','Yes','CMOS','35mm Full Frame (36 x 24 mm)','200 millimeters','24 millimeters','4 f/','24.3 megapixels','Yes');
INSERT INTO Product_Camera VALUES('65','1483C002','No','CMOS','35mm Full Frame (36 x 24 mm)','32 millimeters','12 millimeters','5.6 f/','30.4 megapixels','Yes');

INSERT INTO Orders VALUES('5','Cash on Delivery','2021-07-20 16:30','2107.08','2');
INSERT INTO Orders VALUES('9','Cheque Payment','2021-09-13 06:17','18728.91','0');
INSERT INTO Orders VALUES('1','Cash on Delivery','2021-07-10 15:54','7839.93','-1');
INSERT INTO Orders VALUES('7','Direct Bank Transfer','2020-10-16 04:08','12789.91','3');
INSERT INTO Orders VALUES('1','Direct Bank Transfer','2020-11-20 07:04','1662.5','-1');
INSERT INTO Orders VALUES('3','Direct Bank Transfer','2021-04-07 14:01','901.98','2');
INSERT INTO Orders VALUES('4','Cash on Delivery','2021-07-22 07:47','8639.91','-1');
INSERT INTO Orders VALUES('1','Paypal System','2021-08-18 08:27','8611.83','-1');
INSERT INTO Orders VALUES('4','Paypal System','2021-09-15 10:23','14099.92','2');
INSERT INTO Orders VALUES('3','Cheque Payment','2020-11-16 08:22','6884.85','1');
INSERT INTO Orders VALUES('8','Paypal System','2021-01-02 09:58','17585.65','2');
INSERT INTO Orders VALUES('9','Cheque Payment','2021-03-31 18:11','9368.91','2');
INSERT INTO Orders VALUES('2','Cheque Payment','2021-10-03 11:58','20756.43','2');
INSERT INTO Orders VALUES('2','Cash on Delivery','2021-05-25 18:50','880','-1');
INSERT INTO Orders VALUES('1','Direct Bank Transfer','2021-02-03 10:49','7105.42','3');
INSERT INTO Orders VALUES('2','Paypal System','2021-02-14 15:10','450.99','3');
INSERT INTO Orders VALUES('4','Cash on Delivery','2021-08-06 19:16','1819.9','1');
INSERT INTO Orders VALUES('5','Paypal System','2021-06-28 09:06','4688.91','0');
INSERT INTO Orders VALUES('3','Direct Bank Transfer','2021-03-29 14:20','11752.89','1');
INSERT INTO Orders VALUES('7','Direct Bank Transfer','2021-03-06 00:49','4659.91','0');
INSERT INTO Orders VALUES('3','Cash on Delivery','2021-05-01 06:29','17787.09','0');
INSERT INTO Orders VALUES('6','Cheque Payment','2021-09-06 23:28','16634.84','1');
INSERT INTO Orders VALUES('8','Cash on Delivery','2020-12-17 18:23','2902.95','2');
INSERT INTO Orders VALUES('4','Direct Bank Transfer','2021-09-03 19:12','22792.74','-1');
INSERT INTO Orders VALUES('8','Direct Bank Transfer','2021-01-11 14:43','12182.64','2');
INSERT INTO Orders VALUES('8','Direct Bank Transfer','2021-02-02 09:46','21248.79','2');
INSERT INTO Orders VALUES('6','Cash on Delivery','2021-09-03 08:21','1995','3');
INSERT INTO Orders VALUES('3','Paypal System','2021-03-10 06:45','753.99','0');
INSERT INTO Orders VALUES('9','Paypal System','2021-07-31 15:21','19698.67','2');
INSERT INTO Orders VALUES('1','Cheque Payment','2021-09-07 12:43','12839.94','0');
INSERT INTO Orders VALUES('1','Paypal System','2021-04-27 00:53','23009.63','1');
INSERT INTO Orders VALUES('3','Cheque Payment','2021-06-03 04:33','2511.3','2');
INSERT INTO Orders VALUES('10','Cheque Payment','2021-09-18 09:43','1834.62','1');
INSERT INTO Orders VALUES('2','Cash on Delivery','2021-02-09 11:37','10699.95','3');
INSERT INTO Orders VALUES('7','Direct Bank Transfer','2020-12-17 05:52','4090.89','3');
INSERT INTO Orders VALUES('4','Paypal System','2021-05-05 10:46','3288.59','2');
INSERT INTO Orders VALUES('6','Cash on Delivery','2020-11-22 00:51','15575.92','1');
INSERT INTO Orders VALUES('4','Paypal System','2021-07-29 01:10','27227.6','3');
INSERT INTO Orders VALUES('4','Direct Bank Transfer','2021-09-11 05:21','10169.3','1');
INSERT INTO Orders VALUES('9','Direct Bank Transfer','2020-10-14 01:15','17099.91','3');
INSERT INTO Orders VALUES('6','Cash on Delivery','2021-06-12 13:46','3139.9','3');
INSERT INTO Orders VALUES('10','Cheque Payment','2021-04-05 15:22','9621.96','2');
INSERT INTO Orders VALUES('2','Cash on Delivery','2021-03-18 01:17','13757.25','3');
INSERT INTO Orders VALUES('1','Direct Bank Transfer','2021-02-01 21:29','12485.94','1');
INSERT INTO Orders VALUES('5','Direct Bank Transfer','2021-09-06 09:29','9200.74','-1');
INSERT INTO Orders VALUES('4','Direct Bank Transfer','2020-11-08 13:41','10780.99','3');
INSERT INTO Orders VALUES('10','Cash on Delivery','2021-03-21 10:09','7874.95','0');
INSERT INTO Orders VALUES('1','Paypal System','2021-07-18 23:16','6399.92','0');
INSERT INTO Orders VALUES('9','Paypal System','2021-02-08 09:45','7497.66','2');
INSERT INTO Orders VALUES('5','Cheque Payment','2020-11-22 09:36','2868.35','3');

INSERT INTO Order_Details VALUES('35','52','5','2734.95');
INSERT INTO Order_Details VALUES('19','43','4','727.96');
INSERT INTO Order_Details VALUES('39','17','10','9723.3');
INSERT INTO Order_Details VALUES('24','32','9','11159.91');
INSERT INTO Order_Details VALUES('4','56','2','837.1');
INSERT INTO Order_Details VALUES('4','60','1','3240.99');
INSERT INTO Order_Details VALUES('50','43','4','727.96');
INSERT INTO Order_Details VALUES('38','19','6','2959.32');
INSERT INTO Order_Details VALUES('11','11','4','6511.96');
INSERT INTO Order_Details VALUES('4','35','2','627.98');
INSERT INTO Order_Details VALUES('10','46','6','3599.94');
INSERT INTO Order_Details VALUES('4','43','10','1819.9');
INSERT INTO Order_Details VALUES('44','59','6','12485.94');
INSERT INTO Order_Details VALUES('13','36','3','608.64');
INSERT INTO Order_Details VALUES('24','23','10','8609.9');
INSERT INTO Order_Details VALUES('19','16','7','11024.93');
INSERT INTO Order_Details VALUES('20','30','1','1739.99');
INSERT INTO Order_Details VALUES('38','19','7','3452.54');
INSERT INTO Order_Details VALUES('1','44','4','2107.08');
INSERT INTO Order_Details VALUES('21','50','9','9368.91');
INSERT INTO Order_Details VALUES('25','15','6','12182.64');
INSERT INTO Order_Details VALUES('36','18','7','1759.31');
INSERT INTO Order_Details VALUES('2','59','9','18728.91');
INSERT INTO Order_Details VALUES('46','64','5','10450');
INSERT INTO Order_Details VALUES('17','43','10','1819.9');
INSERT INTO Order_Details VALUES('26','22','7','8189.93');
INSERT INTO Order_Details VALUES('22','13','1','2457.99');
INSERT INTO Order_Details VALUES('11','44','9','4740.93');
INSERT INTO Order_Details VALUES('29','9','8','6399.92');
INSERT INTO Order_Details VALUES('26','62','1','840.99');
INSERT INTO Order_Details VALUES('38','14','8','19993.76');
INSERT INTO Order_Details VALUES('10','58','9','3284.91');
INSERT INTO Order_Details VALUES('45','43','9','1637.91');
INSERT INTO Order_Details VALUES('11','44','5','2633.85');
INSERT INTO Order_Details VALUES('9','61','6','12017.94');
INSERT INTO Order_Details VALUES('33','42','6','1834.62');
INSERT INTO Order_Details VALUES('42','17','3','2916.99');
INSERT INTO Order_Details VALUES('39','1','2','446');
INSERT INTO Order_Details VALUES('8','40','7','3401.93');
INSERT INTO Order_Details VALUES('18','49','9','4688.91');
INSERT INTO Order_Details VALUES('13','39','9','7127.91');
INSERT INTO Order_Details VALUES('35','4','6','1355.94');
INSERT INTO Order_Details VALUES('24','49','3','1562.97');
INSERT INTO Order_Details VALUES('22','50','10','10409.9');
INSERT INTO Order_Details VALUES('20','58','8','2919.92');
INSERT INTO Order_Details VALUES('16','27','1','450.99');
INSERT INTO Order_Details VALUES('27','20','6','1995');
INSERT INTO Order_Details VALUES('4','27','4','1803.96');
INSERT INTO Order_Details VALUES('47','16','5','7874.95');
INSERT INTO Order_Details VALUES('11','25','9','3698.91');
INSERT INTO Order_Details VALUES('22','56','9','3766.95');
INSERT INTO Order_Details VALUES('5','20','5','1662.5');
INSERT INTO Order_Details VALUES('45','37','8','2855.92');
INSERT INTO Order_Details VALUES('21','20','1','332.5');
INSERT INTO Order_Details VALUES('29','5','10','5158.8');
INSERT INTO Order_Details VALUES('31','1','1','223');
INSERT INTO Order_Details VALUES('36','55','6','1529.28');
INSERT INTO Order_Details VALUES('15','56','10','4185.5');
INSERT INTO Order_Details VALUES('21','21','8','7679.92');
INSERT INTO Order_Details VALUES('32','56','6','2511.3');
INSERT INTO Order_Details VALUES('24','58','4','1459.96');
INSERT INTO Order_Details VALUES('45','54','9','4706.91');
INSERT INTO Order_Details VALUES('26','3','5','4165');
INSERT INTO Order_Details VALUES('48','9','8','6399.92');
INSERT INTO Order_Details VALUES('9','50','2','2081.98');
INSERT INTO Order_Details VALUES('13','48','6','5579.94');
INSERT INTO Order_Details VALUES('13','32','6','7439.94');
INSERT INTO Order_Details VALUES('31','15','4','8121.76');
INSERT INTO Order_Details VALUES('42','2','9','1980');
INSERT INTO Order_Details VALUES('7','21','9','8639.91');
INSERT INTO Order_Details VALUES('28','18','3','753.99');
INSERT INTO Order_Details VALUES('29','11','5','8139.95');
INSERT INTO Order_Details VALUES('26','49','9','4688.91');
INSERT INTO Order_Details VALUES('3','21','3','2879.97');
INSERT INTO Order_Details VALUES('43','42','3','917.31');
INSERT INTO Order_Details VALUES('14','2','4','880');
INSERT INTO Order_Details VALUES('34','53','5','10699.95');
INSERT INTO Order_Details VALUES('31','32','8','9919.92');
INSERT INTO Order_Details VALUES('21','36','2','405.76');
INSERT INTO Order_Details VALUES('37','65','6','13655.94');
INSERT INTO Order_Details VALUES('26','62','4','3363.96');
INSERT INTO Order_Details VALUES('46','29','1','330.99');
INSERT INTO Order_Details VALUES('8','49','10','5209.9');
INSERT INTO Order_Details VALUES('3','32','4','4959.96');
INSERT INTO Order_Details VALUES('23','45','6','1599.96');
INSERT INTO Order_Details VALUES('30','53','6','12839.94');
INSERT INTO Order_Details VALUES('38','25','2','821.98');
INSERT INTO Order_Details VALUES('31','34','5','4744.95');
INSERT INTO Order_Details VALUES('23','10','1','1302.99');
INSERT INTO Order_Details VALUES('4','38','3','4459.98');
INSERT INTO Order_Details VALUES('41','35','10','3139.9');
INSERT INTO Order_Details VALUES('15','58','8','2919.92');
INSERT INTO Order_Details VALUES('42','16','3','4724.97');
INSERT INTO Order_Details VALUES('6','27','2','901.98');
INSERT INTO Order_Details VALUES('37','21','2','1919.98');
INSERT INTO Order_Details VALUES('49','14','3','7497.66');
INSERT INTO Order_Details VALUES('43','53','6','12839.94');
INSERT INTO Order_Details VALUES('40','12','9','17099.91');
INSERT INTO Order_Details VALUES('50','42','7','2140.39');
INSERT INTO Order_Details VALUES('12','50','9','9368.91');


INSERT INTO Feedback VALUES('3','7','2','Commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices','2020-10-06 19:48:00');
INSERT INTO Feedback VALUES('23','3','3','Lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo','2021-05-20 17:33:57');
INSERT INTO Feedback VALUES('4','5','5','Leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac','2019-03-16 21:35:11');
INSERT INTO Feedback VALUES('2','2','4','Eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus','2018-04-28 23:47:31');
INSERT INTO Feedback VALUES('46','9','4','Diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae','2018-05-21 23:30:14');
INSERT INTO Feedback VALUES('47','5','2','Erat fermentum justo nec condimentum neque sapien placerat ante nulla','2018-01-19 15:49:04');
INSERT INTO Feedback VALUES('15','2','1','Id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede','2018-08-18 13:49:25');
INSERT INTO Feedback VALUES('62','8','4','Turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas','2019-11-26 15:53:40');
INSERT INTO Feedback VALUES('55','8','4','Consequat morbi a ipsum integer a nibh in quis justo','2020-02-06 13:00:07');
INSERT INTO Feedback VALUES('20','4','3','Lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl','2018-07-06 22:07:44');
INSERT INTO Feedback VALUES('32','9','4','Consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus','2021-06-18 04:07:15');
INSERT INTO Feedback VALUES('1','8','1','Nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat','2019-06-20 08:51:14');
INSERT INTO Feedback VALUES('38','2','3','Blandit mi in porttitor pede justo eu massa donec dapibus','2021-08-03 09:20:06');
INSERT INTO Feedback VALUES('16','1','5','Nunc donec quis orci eget orci vehicula condimentum curabitur in libero','2021-07-22 22:17:05');
INSERT INTO Feedback VALUES('41','4','1','Placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis','2019-04-17 09:16:08');
INSERT INTO Feedback VALUES('44','4','4','Elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue','2019-07-13 17:27:58');
INSERT INTO Feedback VALUES('7','6','5','Ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices','2021-02-04 19:52:47');
INSERT INTO Feedback VALUES('61','1','5','Mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a','2021-03-13 10:08:03');
INSERT INTO Feedback VALUES('62','5','1','At nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget','2021-09-05 22:41:01');
INSERT INTO Feedback VALUES('19','5','5','Aliquam convallis nunc proin at turpis a pede posuere nonummy','2019-04-21 03:58:17');
INSERT INTO Feedback VALUES('1','2','3','Sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus','2021-03-04 12:18:33');
INSERT INTO Feedback VALUES('19','5','1','Nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium','2018-07-27 14:42:31');
INSERT INTO Feedback VALUES('50','5','1','Suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra','2021-05-03 07:23:40');
INSERT INTO Feedback VALUES('12','1','1','Interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis','2021-01-14 04:27:10');
INSERT INTO Feedback VALUES('61','8','1','Ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu','2018-05-06 00:52:06');
INSERT INTO Feedback VALUES('20','1','5','Nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus','2018-04-20 19:13:54');
INSERT INTO Feedback VALUES('47','2','2','Vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque','2019-01-18 22:57:25');
INSERT INTO Feedback VALUES('41','1','1','Nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat','2021-02-07 23:45:20');
INSERT INTO Feedback VALUES('30','6','2','Tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec','2018-03-28 17:13:26');
INSERT INTO Feedback VALUES('44','1','1','Amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis','2020-10-18 11:49:03');
INSERT INTO Feedback VALUES('24','3','1','Pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed','2019-07-02 13:55:31');
INSERT INTO Feedback VALUES('58','3','2','Sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis','2020-05-17 04:14:08');
INSERT INTO Feedback VALUES('4','10','1','Nam congue risus semper porta volutpat quam pede lobortis ligula sit amet','2018-09-12 08:11:44');
INSERT INTO Feedback VALUES('9','10','5','Viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum','2021-04-30 22:36:22');
INSERT INTO Feedback VALUES('17','5','5','At turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci','2019-12-13 23:32:34');
INSERT INTO Feedback VALUES('46','5','2','Viverra eget congue eget semper rutrum nulla nunc purus phasellus in','2018-02-18 01:50:05');
INSERT INTO Feedback VALUES('8','9','4','Dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante','2019-06-17 05:47:22');
INSERT INTO Feedback VALUES('6','1','4','Condimentum curabitur in libero ut massa volutpat convallis morbi odio','2018-04-26 18:35:11');
INSERT INTO Feedback VALUES('19','1','5','Imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris','2021-09-01 12:41:59');
INSERT INTO Feedback VALUES('48','2','5','Sed interdum venenatis turpis enim blandit mi in porttitor pede','2019-12-18 04:45:58');
INSERT INTO Feedback VALUES('23','6','3','Luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi','2021-09-03 14:08:10');
INSERT INTO Feedback VALUES('54','3','2','Eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in','2020-10-14 07:34:16');
INSERT INTO Feedback VALUES('28','10','2','Curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas','2021-07-31 14:41:00');
INSERT INTO Feedback VALUES('33','8','2','Rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit','2019-09-29 06:28:41');
INSERT INTO Feedback VALUES('8','3','5','Ultrices phasellus id sapien in sapien iaculis congue vivamus metus','2019-12-25 23:51:17');
INSERT INTO Feedback VALUES('57','8','2','Mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh','2019-06-19 13:11:29');
INSERT INTO Feedback VALUES('28','9','3','Bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis','2018-11-05 02:20:25');
INSERT INTO Feedback VALUES('18','6','3','Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut','2018-03-24 16:35:38');
INSERT INTO Feedback VALUES('49','4','3','Duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit','2020-06-17 13:59:06');
INSERT INTO Feedback VALUES('59','1','4','Porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl','2019-11-09 11:22:37');
INSERT INTO Feedback VALUES('4','7','4','Morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget','2019-06-02 17:49:57');
INSERT INTO Feedback VALUES('45','5','5','Congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium','2020-11-24 08:49:23');
INSERT INTO Feedback VALUES('64','2','4','Lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem','2019-11-30 01:17:52');
INSERT INTO Feedback VALUES('59','9','3','Neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor','2021-03-31 08:05:12');
INSERT INTO Feedback VALUES('50','2','2','Odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet','2021-02-07 08:06:05');
INSERT INTO Feedback VALUES('7','7','5','Sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae','2019-12-27 16:15:38');
INSERT INTO Feedback VALUES('59','7','1','Praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in','2020-07-26 13:43:56');
INSERT INTO Feedback VALUES('26','9','2','Luctus nec molestie sed justo pellentesque viverra pede ac diam','2021-02-15 12:16:01');
INSERT INTO Feedback VALUES('1','1','1','Justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus','2018-11-07 10:29:25');
INSERT INTO Feedback VALUES('13','4','5','Magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque','2020-09-21 19:53:50');
INSERT INTO Feedback VALUES('33','5','4','Lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer','2018-04-23 21:58:20');
INSERT INTO Feedback VALUES('9','9','5','Amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque','2021-01-25 05:19:31');
INSERT INTO Feedback VALUES('7','10','1','Eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus','2020-09-16 11:22:51');
INSERT INTO Feedback VALUES('12','1','1','In hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo','2020-11-15 18:47:07');
INSERT INTO Feedback VALUES('41','3','3','Feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio','2019-05-28 00:43:19');
INSERT INTO Feedback VALUES('2','5','5','Eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet','2019-12-29 15:53:20');
INSERT INTO Feedback VALUES('10','9','1','Congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat','2018-12-28 22:18:58');
INSERT INTO Feedback VALUES('32','7','2','Justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla','2020-08-04 18:31:21');
INSERT INTO Feedback VALUES('9','4','5','Quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque','2018-03-12 13:39:26');
INSERT INTO Feedback VALUES('17','3','1','Mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac','2019-07-18 03:34:45');
INSERT INTO Feedback VALUES('33','10','1','Tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam','2020-10-12 20:05:47');
INSERT INTO Feedback VALUES('64','10','4','Feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id','2021-08-16 07:45:26');
INSERT INTO Feedback VALUES('16','2','1','Sed lacus morbi sem mauris laoreet ut rhoncus aliquet','2021-05-06 09:54:41');
INSERT INTO Feedback VALUES('45','8','5','Enim blandit mi in porttitor pede justo eu massa donec dapibus','2020-10-27 07:26:28');
INSERT INTO Feedback VALUES('31','6','2','Vel accumsan tellus nisi eu orci','2021-02-23 06:28:18');
INSERT INTO Feedback VALUES('8','2','2','Morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate','2021-08-29 03:43:23');
INSERT INTO Feedback VALUES('55','9','4','Rutrum nulla nunc purus phasellus in felis donec semper sapien','2020-10-14 03:49:49');
INSERT INTO Feedback VALUES('31','1','5','Quis justo maecenas rhoncus aliquam','2021-01-24 00:52:32');
INSERT INTO Feedback VALUES('17','8','4','Ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus','2021-04-16 05:14:08');
INSERT INTO Feedback VALUES('57','8','4','Ullamcorper augue a suscipit nulla elit ac nulla sed vel enim','2021-06-20 02:44:47');
INSERT INTO Feedback VALUES('15','10','4','Nonummy maecenas tincidunt lacus at velit vivamus','2020-11-20 14:49:52');
INSERT INTO Feedback VALUES('14','1','2','Duis consequat dui nec nisi','2020-12-03 02:49:23');
INSERT INTO Feedback VALUES('17','3','1','Quam suspendisse potenti nullam porttitor lacus','2020-11-01 09:40:25');
INSERT INTO Feedback VALUES('24','8','4','At turpis a pede posuere nonummy integer non velit donec diam neque vestibulum','2021-04-01 22:11:16');
INSERT INTO Feedback VALUES('8','9','2','Blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac','2021-04-15 15:32:11');
INSERT INTO Feedback VALUES('30','5','4','Orci vehicula condimentum curabitur in libero','2021-03-19 15:34:22');
INSERT INTO Feedback VALUES('4','7','1','Cras in purus eu magna vulputate luctus','2020-10-19 12:34:41');
INSERT INTO Feedback VALUES('7','7','4','Justo in hac habitasse platea','2021-02-11 05:41:08');
INSERT INTO Feedback VALUES('8','5','2','Nam nulla integer pede justo lacinia eget tincidunt eget','2021-03-27 19:07:25');
INSERT INTO Feedback VALUES('50','7','5','Nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget','2021-01-19 22:09:01');
INSERT INTO Feedback VALUES('22','7','2','Pretium iaculis justo in hac habitasse platea','2021-03-06 13:45:52');
INSERT INTO Feedback VALUES('44','6','4','Congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum','2021-07-05 21:42:32');
INSERT INTO Feedback VALUES('6','9','1','Dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes','2021-05-08 08:07:31');
INSERT INTO Feedback VALUES('57','7','4','Porta volutpat erat quisque erat eros viverra eget congue eget','2020-11-25 21:29:08');
INSERT INTO Feedback VALUES('43','9','4','Sit amet erat nulla tempus vivamus in','2021-02-13 23:08:19');
INSERT INTO Feedback VALUES('7','8','3','Pede justo eu massa donec','2021-09-03 16:56:25');
INSERT INTO Feedback VALUES('13','6','1','Integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo','2021-09-01 12:45:16');
INSERT INTO Feedback VALUES('16','1','1','Hac habitasse platea dictumst morbi','2021-03-08 09:04:41');
INSERT INTO Feedback VALUES('47','1','1','Platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo','2021-01-01 16:03:18');
INSERT INTO Feedback VALUES('42','8','2','Lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu','2021-04-18 19:29:00');
INSERT INTO Feedback VALUES('60','8','4','Id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque','2021-05-22 20:23:28');
INSERT INTO Feedback VALUES('21','1','3','Vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna','2020-12-16 01:26:17');
INSERT INTO Feedback VALUES('31','2','2','Id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio','2020-11-09 11:54:06');
INSERT INTO Feedback VALUES('41','6','2','Quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus','2021-03-21 13:33:24');
INSERT INTO Feedback VALUES('20','5','5','Maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta','2020-10-02 23:12:24');
INSERT INTO Feedback VALUES('36','6','2','Eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus','2021-08-18 18:12:03');
INSERT INTO Feedback VALUES('49','8','1','Dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes','2021-08-16 18:27:47');
INSERT INTO Feedback VALUES('61','5','4','Maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu','2020-09-20 20:20:56');
INSERT INTO Feedback VALUES('60','4','4','Enim blandit mi in porttitor','2021-01-24 18:09:11');
INSERT INTO Feedback VALUES('1','10','4','Sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae','2021-06-25 17:40:09');
INSERT INTO Feedback VALUES('12','5','2','Ultrices posuere cubilia curae mauris viverra diam vitae','2021-07-25 12:57:29');
INSERT INTO Feedback VALUES('7','7','1','Id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae','2021-03-16 23:06:44');
INSERT INTO Feedback VALUES('43','6','1','Ut dolor morbi vel lectus in quam fringilla rhoncus mauris','2021-08-21 23:43:21');
INSERT INTO Feedback VALUES('11','1','2','Enim in tempor turpis nec euismod scelerisque quam turpis adipiscing','2021-05-08 12:41:11');
INSERT INTO Feedback VALUES('24','3','1','Nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et','2020-10-02 22:44:26');
INSERT INTO Feedback VALUES('31','2','3','Enim sit amet nunc viverra','2021-05-18 20:26:33');
INSERT INTO Feedback VALUES('62','10','5','Nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis','2021-04-14 05:02:40');
INSERT INTO Feedback VALUES('36','6','5','Pretium nisl ut volutpat sapien arcu sed augue','2021-07-28 23:43:03');
INSERT INTO Feedback VALUES('50','4','3','Ullamcorper augue a suscipit nulla elit ac nulla','2021-04-12 14:03:41');
INSERT INTO Feedback VALUES('26','9','4','Nibh in hac habitasse platea dictumst aliquam','2021-04-11 19:12:43');
INSERT INTO Feedback VALUES('23','4','5','Morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis','2020-11-06 17:23:15');
INSERT INTO Feedback VALUES('54','8','4','Ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo','2021-05-18 16:55:06');
INSERT INTO Feedback VALUES('15','9','4','Nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at','2021-03-05 16:17:55');
INSERT INTO Feedback VALUES('6','9','2','Vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at','2021-08-10 21:19:30');
INSERT INTO Feedback VALUES('32','1','5','Sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin','2020-11-09 20:41:45');
INSERT INTO Feedback VALUES('47','6','3','Et magnis dis parturient montes nascetur ridiculus mus etiam vel augue','2020-10-28 00:41:21');
INSERT INTO Feedback VALUES('24','9','3','Vulputate ut ultrices vel augue vestibulum ante','2021-08-28 20:25:38');
INSERT INTO Feedback VALUES('6','9','3','Nascetur ridiculus mus vivamus vestibulum','2020-12-19 23:26:56');
INSERT INTO Feedback VALUES('54','8','4','Augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum','2021-07-10 16:13:04');
INSERT INTO Feedback VALUES('39','6','1','Quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi','2021-06-08 10:48:05');
INSERT INTO Feedback VALUES('6','4','3','Nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend','2021-08-06 08:34:04');
INSERT INTO Feedback VALUES('6','8','2','Risus dapibus augue vel accumsan tellus','2021-07-23 19:54:35');
INSERT INTO Feedback VALUES('1','1','5','Natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque','2021-08-03 10:26:12');
INSERT INTO Feedback VALUES('28','1','5','Ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis','2021-09-16 13:31:22');
INSERT INTO Feedback VALUES('42','9','1','Massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at','2021-06-13 13:47:21');
INSERT INTO Feedback VALUES('64','10','1','Ac leo pellentesque ultrices mattis odio donec vitae nisi nam','2020-11-16 14:21:58');
INSERT INTO Feedback VALUES('47','7','5','Eleifend pede libero quis orci nullam','2021-06-07 05:42:44');
INSERT INTO Feedback VALUES('25','2','4','Augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet','2021-03-18 18:57:57');
INSERT INTO Feedback VALUES('54','3','3','Ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie','2021-04-01 17:47:54');
INSERT INTO Feedback VALUES('63','7','5','Donec semper sapien a libero nam dui proin leo odio porttitor id consequat','2021-07-23 22:18:34');
INSERT INTO Feedback VALUES('56','4','5','Turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin','2021-05-03 00:19:35');
INSERT INTO Feedback VALUES('41','2','5','Fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet','2021-01-16 11:40:31');
INSERT INTO Feedback VALUES('54','1','4','Erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper','2020-10-22 04:39:54');
INSERT INTO Feedback VALUES('25','7','4','Nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit','2020-12-02 22:40:40');
INSERT INTO Feedback VALUES('1','2','4','Mi in porttitor pede justo eu massa donec dapibus','2020-10-16 12:41:39');
INSERT INTO Feedback VALUES('53','3','1','Ultrices aliquet maecenas leo odio condimentum id luctus','2021-07-03 09:22:42');
INSERT INTO Feedback VALUES('53','6','1','Lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante','2021-02-27 14:18:00');
INSERT INTO Feedback VALUES('1','9','4','Nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam','2021-02-01 16:18:10');
INSERT INTO Feedback VALUES('42','3','2','Porta volutpat quam pede lobortis ligula sit amet eleifend pede','2021-06-14 11:12:17');
INSERT INTO Feedback VALUES('39','7','5','Convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris','2020-10-03 19:13:29');
INSERT INTO Feedback VALUES('17','1','3','Lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna','2020-12-10 16:17:13');
INSERT INTO Feedback VALUES('59','7','2','Pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit','2021-05-05 03:17:24');
INSERT INTO Feedback VALUES('27','9','2','Ipsum primis in faucibus orci luctus','2020-09-30 02:31:24');
INSERT INTO Feedback VALUES('9','10','1','Non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis','2020-10-07 11:03:33');
INSERT INTO Feedback VALUES('10','3','3','Eleifend donec ut dolor morbi vel lectus in quam fringilla','2021-04-29 04:57:56');
INSERT INTO Feedback VALUES('53','10','1','Nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi','2021-03-14 03:41:49');
INSERT INTO Feedback VALUES('51','5','2','Ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi','2021-06-11 15:43:42');
INSERT INTO Feedback VALUES('64','3','5','Felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet','2021-04-25 11:30:43');
INSERT INTO Feedback VALUES('49','6','3','Phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit','2021-01-15 01:00:19');
INSERT INTO Feedback VALUES('36','3','3','Nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at','2020-10-21 17:36:28');
INSERT INTO Feedback VALUES('47','7','1','Sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere','2021-04-05 14:48:49');
INSERT INTO Feedback VALUES('30','8','1','Felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec','2020-12-29 03:56:30');
INSERT INTO Feedback VALUES('28','3','4','Pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in','2021-06-07 09:12:51');
INSERT INTO Feedback VALUES('51','3','3','Bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit','2021-04-05 16:20:30');
INSERT INTO Feedback VALUES('12','9','2','Adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula','2021-03-16 03:40:25');
INSERT INTO Feedback VALUES('54','10','3','Luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin','2021-05-31 10:50:20');
INSERT INTO Feedback VALUES('30','8','1','Nisi at nibh in hac habitasse platea dictumst aliquam','2020-10-11 19:29:38');
INSERT INTO Feedback VALUES('47','1','5','Enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu','2021-01-11 18:54:58');
INSERT INTO Feedback VALUES('39','5','5','Pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus','2021-07-24 07:58:42');
INSERT INTO Feedback VALUES('52','9','3','Rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit','2021-01-28 08:16:25');
INSERT INTO Feedback VALUES('61','5','3','Et ultrices posuere cubilia curae duis faucibus accumsan odio','2021-08-22 05:28:30');
INSERT INTO Feedback VALUES('20','6','5','Ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus','2021-04-24 21:38:45');
INSERT INTO Feedback VALUES('25','8','2','Quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices','2021-03-02 18:30:18');
INSERT INTO Feedback VALUES('25','2','3','Morbi vestibulum velit id pretium iaculis','2021-09-12 07:57:21');
INSERT INTO Feedback VALUES('24','7','4','Dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum','2021-02-23 00:30:48');
INSERT INTO Feedback VALUES('24','10','5','Felis eu sapien cursus vestibulum','2021-01-30 20:29:58');
INSERT INTO Feedback VALUES('13','6','1','Eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis','2021-08-23 17:50:36');
INSERT INTO Feedback VALUES('55','6','3','Ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor','2021-02-25 14:28:53');
INSERT INTO Feedback VALUES('4','10','2','Id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed','2020-10-19 16:12:29');
INSERT INTO Feedback VALUES('8','7','5','Placerat ante nulla justo aliquam','2021-04-26 06:31:36');
INSERT INTO Feedback VALUES('35','2','3','Aliquam convallis nunc proin at turpis a pede posuere nonummy','2021-02-21 08:04:27');
INSERT INTO Feedback VALUES('52','1','4','In hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem','2021-05-20 00:37:00');
INSERT INTO Feedback VALUES('59','6','5','Sagittis dui vel nisl duis ac nibh','2021-03-05 16:19:22');
INSERT INTO Feedback VALUES('5','3','1','Duis bibendum morbi non quam nec','2020-12-25 15:33:54');
INSERT INTO Feedback VALUES('22','2','5','Pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id','2021-06-16 02:28:50');
INSERT INTO Feedback VALUES('63','3','2','Sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend','2021-02-12 08:21:13');
INSERT INTO Feedback VALUES('3','1','3','Aenean sit amet justo morbi ut odio cras mi pede malesuada','2021-09-14 16:44:08');
INSERT INTO Feedback VALUES('35','1','1','In hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis','2020-09-28 14:01:09');
INSERT INTO Feedback VALUES('34','6','2','Auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl','2021-09-15 15:47:09');
INSERT INTO Feedback VALUES('25','3','1','Mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus','2021-07-15 07:13:48');
INSERT INTO Feedback VALUES('23','2','5','Tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum','2020-12-10 13:34:40');
INSERT INTO Feedback VALUES('50','5','1','Molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus','2021-08-13 23:55:19');
INSERT INTO Feedback VALUES('40','5','2','Vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing','2021-08-09 11:36:06');
INSERT INTO Feedback VALUES('65','4','2','Libero ut massa volutpat convallis morbi odio odio elementum eu','2020-12-31 05:12:43');
INSERT INTO Feedback VALUES('41','3','1','Elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit','2020-11-19 10:44:52');
INSERT INTO Feedback VALUES('50','3','5','In felis eu sapien cursus vestibulum','2021-02-15 01:47:47');
INSERT INTO Feedback VALUES('61','10','5','Viverra eget congue eget semper rutrum','2021-06-03 02:33:57');
INSERT INTO Feedback VALUES('4','10','3','Nisl venenatis lacinia aenean sit amet justo morbi ut','2021-07-30 05:39:11');
INSERT INTO Feedback VALUES('19','8','4','Viverra diam vitae quam suspendisse potenti nullam','2021-04-24 16:56:05');
INSERT INTO Feedback VALUES('2','6','4','Quis orci nullam molestie nibh','2021-02-09 20:03:16');

INSERT INTO Coupon VALUES('ZUT62UVX6','30');
INSERT INTO Coupon VALUES('IQJ57GSM1','10');
INSERT INTO Coupon VALUES('MEJ42UEW3','30');
INSERT INTO Coupon VALUES('DPN03VRQ8','45');
INSERT INTO Coupon VALUES('IXE21EOI6','10');
INSERT INTO Coupon VALUES('KRS56CIE8','45');
INSERT INTO Coupon VALUES('BTQ44XJT2','25');
INSERT INTO Coupon VALUES('KXI96PGP3','35');
INSERT INTO Coupon VALUES('MHY49AWF6','25');
INSERT INTO Coupon VALUES('DRX15VPG3','10');
INSERT INTO Coupon VALUES('KRR30CTL8','30');
INSERT INTO Coupon VALUES('KBN43MHN7','10');
INSERT INTO Coupon VALUES('GRQ48UJE7','20');
INSERT INTO Coupon VALUES('FVK20OAT9','20');
INSERT INTO Coupon VALUES('AIR73FIR9','40');
INSERT INTO Coupon VALUES('DFH60HUN1','35');
INSERT INTO Coupon VALUES('INP91RCG5','30');
INSERT INTO Coupon VALUES('HUA20XUC3','15');
INSERT INTO Coupon VALUES('VOF87MEB7','15');
INSERT INTO Coupon VALUES('TUO31IXG2','35');
