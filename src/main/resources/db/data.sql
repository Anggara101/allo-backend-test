INSERT INTO dapil (id,nama_dapil,provinsi,jumlah_kursi) VALUES
	 ('3a67e430-fd6e-4c32-9f05-222f87f6d04b','Dapil Jakarta I','DKI Jakarta',6),
	 ('9073a2f4-a4f4-4787-ac87-52fc241e9785','Dapil Jawa Barat III','Jawa Barat',9),
	 ('9f06bcf6-9817-461f-9674-e3b50e0e8816','Dapil Jawa Tengah V','Jawa Tengah',8),
	 ('272fad53-8a89-484d-a4df-eee6859069aa','Dapil Sumatera Utara II','Sumatera Utara',7);

INSERT INTO dapil_wilayah (id,wilayah,dapil_id) VALUES
	 ('e87275fe-0f9a-4166-9fc7-9ebfe1f6b18d','Jakarta Pusat','3a67e430-fd6e-4c32-9f05-222f87f6d04b'),
	 ('2d079a98-7288-4c7c-a14f-2575e868e0cf','Jakarta Selatan','3a67e430-fd6e-4c32-9f05-222f87f6d04b'),
	 ('841e344b-3308-46b9-8e57-7b803275b99d','Bekasi','9073a2f4-a4f4-4787-ac87-52fc241e9785'),
	 ('45af81f1-a6a3-4996-aae7-f7221a2c2ccc','Karawang','9073a2f4-a4f4-4787-ac87-52fc241e9785'),
	 ('9b6914fc-918e-476a-8c07-1f777de5e984','Solo','9f06bcf6-9817-461f-9674-e3b50e0e8816'),
	 ('28221a96-1dcc-42d9-9cf2-2cdb59ebc101','Semarang','9f06bcf6-9817-461f-9674-e3b50e0e8816'),
	 ('c4e3672f-4199-464c-8bb1-8d54480ab1d1','Medan','272fad53-8a89-484d-a4df-eee6859069aa'),
	 ('20057f56-49a7-490f-874f-600dd296d680','Binjai','272fad53-8a89-484d-a4df-eee6859069aa');

INSERT INTO partai (id,nama_partai,no_urut) VALUES
	 ('c7186f7b-acd7-45b6-a383-2056bfa132e6','Partai Merdeka',1),
	 ('9242035f-f53e-4d19-abf1-667611c60a82','Partai Sejahtera',2),
	 ('27be3af6-fce9-4802-af69-80defef33535','Partai Nasional',3),
	 ('bf5d6531-c435-416b-92fc-656fd4cd14c5','Partai Rakyat Bersatu',4);

INSERT INTO caleg (id,dapil_id,partai_id,no_urut,nama,jenis_kelamin) VALUES
	 ('24cb642a-72de-4b71-b467-ba8adcbe71f1','3a67e430-fd6e-4c32-9f05-222f87f6d04b','c7186f7b-acd7-45b6-a383-2056bfa132e6',1,'Budi Santoso','LAKILAKI'),
	 ('7a381748-422e-4ac9-bcc3-de546fa8664d','3a67e430-fd6e-4c32-9f05-222f87f6d04b','9242035f-f53e-4d19-abf1-667611c60a82',2,'Siti Aminah','PEREMPUAN'),
	 ('11143568-f423-49c9-aa25-cae855eb747d','9073a2f4-a4f4-4787-ac87-52fc241e9785','27be3af6-fce9-4802-af69-80defef33535',1,'Andi Wijaya','LAKILAKI'),
	 ('6a92171d-bd4e-483b-88cd-93827854ecb0','9073a2f4-a4f4-4787-ac87-52fc241e9785','bf5d6531-c435-416b-92fc-656fd4cd14c5',2,'Rina Maharani','PEREMPUAN'),
	 ('94a19873-1e98-4d00-9ad7-d694c5330ca7','9f06bcf6-9817-461f-9674-e3b50e0e8816','c7186f7b-acd7-45b6-a383-2056bfa132e6',1,'Suryo Rahman','LAKILAKI'),
	 ('a86e00a8-d372-4968-8d27-69721babb8b2','9f06bcf6-9817-461f-9674-e3b50e0e8816','9242035f-f53e-4d19-abf1-667611c60a82',2,'Tari Wulandari','PEREMPUAN'),
	 ('e9473f61-3a66-4641-9f53-e95bf83767ee','272fad53-8a89-484d-a4df-eee6859069aa','27be3af6-fce9-4802-af69-80defef33535',1,'Faisal Anwar','LAKILAKI'),
	 ('27bdf573-7cc5-4c02-9eee-f18b76f5a702','272fad53-8a89-484d-a4df-eee6859069aa','bf5d6531-c435-416b-92fc-656fd4cd14c5',2,'Lestari Dewi','PEREMPUAN');
