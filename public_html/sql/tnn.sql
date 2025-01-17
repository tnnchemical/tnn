-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2024 at 07:59 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tnn`
--

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `usage_rate` varchar(255) NOT NULL,
  `pdf_name` varchar(255) DEFAULT NULL,
  `pdf_path` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`id`, `product_name`, `description`, `usage_rate`, `pdf_name`, `pdf_path`, `image_name`, `image_path`, `uploaded_at`) VALUES
(1, '111กลูโฟซิเนต-ตายเรียบ1212', 'ฆ่าหญ้าตายยาก ฟื้นฟูดิน', 'ใช้กลูโฟซิเนต 250 มิลลิลิตร ต่อน้ำ 20 ลิตร ใช้ซูปเปอร์ ตายเรียบ 5 กรัม', 'ท่องเที่ยว.pdf', 'uploads_lab/ท่องเที่ยว.pdf', 'weed4.png', 'uploads_lab/weed4.png', '2024-07-18 14:38:01'),
(5, 'แพคโคลบิวทราซอล', 'แพคโคลบิวทราซอลแพคโคลบิวทราซอล', 'ใช้กลูโฟซิเนต 250 มิลลิลิตร ต่อน้ำ 20 ลิตร ใช้ซูปเปอร์ ตายเรียบ 5 กรัม', '64-38 644230009-คำถามทบทวนบทที่ 7.pdf', 'uploads_lab/64-38 644230009-คำถามทบทวนบทที่ 7.pdf', 'hormone2.png', 'uploads_lab/hormone2.png', '2024-07-18 15:46:58'),
(6, 'คาร์วีติน เอสซี', 'คาร์วีติน เอสซีคาร์วีติน เอสซี', 'ใช้กลูโฟซิเนต 250 มิลลิลิตร ต่อน้ำ 20 ลิตร ใช้ซูปเปอร์ ตายเรียบ 5 กรัม', '64-38 644230009-คำถามทบทวนบทที่ 8.pdf', 'uploads_lab/64-38 644230009-คำถามทบทวนบทที่ 8.pdf', 'supplement5.png', 'uploads_lab/supplement5.png', '2024-07-18 16:01:56');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `common_name` varchar(255) NOT NULL,
  `substance_characteristics` text NOT NULL,
  `packing_size` varchar(255) NOT NULL,
  `usage_rate` varchar(255) NOT NULL,
  `feature` text NOT NULL,
  `benefit` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `group_id` varchar(255) NOT NULL,
  `type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `group_name`, `common_name`, `substance_characteristics`, `packing_size`, `usage_rate`, `feature`, `benefit`, `image`, `group_id`, `type_id`) VALUES
(26, 'อีทีฟอน 52', 'สารควบคุมการเจริญเติบโตของพืช', 'อีทีฟอน 52% W/V SL', 'ของเหลวน้ำใส', ' 1000 มิลลิลิตร', '- บูมดอกสับปะรด หยอดยอดสับปะรด ใช้ในอัตรา 4-6 มิลลิลิตร ต่อน้า 20 ลิตร ครั้งที่ 1 สับปะรด อายุ 9-12 เดือน ครั้งที่ 2 หลังจากครั้งแรก 7 วัน ใช้น้าอัตรา 600 ลิตร ต่อไร่', 'สารควบคุมการเจริญเติบโตของพืช มีคุณสมบัติควบคุมการสุกแก่ของพืช มีฤทธิ์แทรกซึมและเคลื่อนย้ายผ่านท่ออาหารไปยังส่วนเจริญของพืชได้ มีสมบัติเป็นกรดอ่อน ดังนั้นไม่ควรผสมน้าทิ้งไว้นานเกิน 24 ชั่วโมง และห้ามผสมกับน้ำที่มีความเป็นด่างจัด', '- ช่วยกระตุ้นการออกดอกในสับปะรด ให้ออกดอกพร้อมกันเพื่อสะดวกต่อการเก็บเกี่ยว - เร่งการสุกของผลไม้ เช่น ทุเรียน มะม่วง กล้วย\r\n- ใช้เร่งการสุกในการเก็บเกี่ยวผลมะเขือเทศรอบสุดท้าย', './uploads/hormone1.png', '33', 1),
(27, 'บีทีเท็กซ์', ' สารควบคุมการเจริญเติบโตของพืช', ' อีทีฟอน 52% W/V SL', ' ของเหลวน้ำใส', ' 1000 มิลลิลิตร', ' - บูมดอกสับปะรด หยอดยอดสับปะรด ใช้ในอัตรา 4-6 มิลลิลิตร ต่อน้า 20 ลิตร ครั้งที่ 1 สับปะรด อายุ 9-12 เดือน ครั้งที่ 2 หลังจากครั้งแรก 7 วัน ใช้น้าอัตรา 600 ลิตร ต่อไร่', 'สารควบคุมการเจริญเติบโตของพืช มีคุณสมบัติควบคุมการสุกแก่ของพืช มีฤทธิ์แทรกซึมและเคลื่อนย้ายผ่านท่ออาหารไปยังส่วนเจริญของพืชได้ มีสมบัติเป็นกรดอ่อน ดังนั้นไม่ควรผสมน้าทิ้งไว้นานเกิน 24 ชั่วโมง และห้ามผสมกับน้ำที่มีความเป็นด่างจัด', '- ช่วยกระตุ้นการออกดอกในสับปะรด ให้ออกดอกพร้อมกันเพื่อสะดวกต่อการเก็บเกี่ยว - เร่งการสุกของผลไม้ เช่น ทุเรียน มะม่วง กล้วย\r\n- ใช้เร่งการสุกในการเก็บเกี่ยวผลมะเขือเทศรอบสุดท้าย', './uploads/hormone2.png', '33', 1),
(28, 'แพคโคลบิวทราซอล', 'สารควบคุมการเจริญเติบโตของพืช', 'แพกโคลบิวทราซอล 15% WP', ' ผงละเอียดสีขาว', ' 1000 กรัม', 'ใช้อัตรา 6.5 กรัมต่อเส้นผ่านศูนย์กลางทรงพุ่ม 1 เมตรผสมน้ำ 5 ลิตร ราดบริเวณโคนต้นโดยห่างจาก โคนต้น 30 เซนติเมตรในระยะใบพวงหรือใบเพสลาด', 'สารชะลอการเจริญเติบโตของพืชที่นิยมใช้กับมะม่วงและพืชไร่ และเป็นสารกาจัดเชื้อรากลุ่ม triazole ออกฤทธิ์ในทางตรงข้ามกับจิบเบอเรลลิน โดยยับยั้งการสังเคราะห์จิบเบอเรลลิน ลดการยืดตัวของปล้อง เพิ่มการเจริญเติบโตของราก เร่งให้เกิดดอก ทำให้ออกลูกเร็วและเพิ่มการผลิตเมล็ดในพืช', 'ใช้ในการจัดสวนเพื่อลดการเจริญเติบโตของยอด ใช้ได้ผลดีกับไม้พุ่มและไม้ต้น ช่วยเพิ่มความทนทานต่อความเครียดจากความแล้ง เกิดใบไม้สีเขียวเข้ม มีความต้านทานต่อเชื้อราและแบคทีเรียเพิ่มขึ้นและเพิ่มการพัฒนาของราก การเจริญของแคมเบียมเช่นเดียวกับการยับยั้งการเจริญของยอดในไม้ต้นบางชนิด', './uploads/hormone3.png', '3', 1),
(32, 'คาร์เบนดาซิม 50 เอสซี', 'สารป้องกันกำจัดโรคพืช', 'คาร์เบนดาซิม 50% W/V EC', 'เนื้อครีมสีขาว', '1000 มิลลิลิตร', ' 20-30 มิลลิลิตร ต่อน้ำ 20 ลิตร', 'เป็นสารกลุ่ม benzimidazoles มีคุณสมบัติเป็นสารดูดซึมและเคลื่อนย้าย ในต้นพืชมีฤทธิ์ครอบคลุมเชื้อโรคกว้างขวาง ยับยั้งการสร้างและพัฒนาเส้นใยของเชื้อรา กลไกออกฤทธิ์ย ับยั้งการแบ่งเซลล์แบบไม่อาศัยเพศ โดยขัดขวางเอนไซม์แอพเพรสซอเรียมที่ช่วยพัฒนาเส้นใยของเชื้อรา ทาให้สายโครโมโซม ที่แยกออกจากกันในขั้นตอนการแบ่งเซลล์แบบไม่อาศัยเพศไม่สามารถกลับมารวมกลุ่มที่บริเวณเบตา-ทูบูลินได้ และอาจยับยั้งการสังเคราะห์ วิตามิน บี12 ของเชื้อราบางชนิด', 'ใช้ป้องกันกาจัดโรคพืช เช่น โรคแอนแทรคโนส, โรคใบจุดตากบ, โรคใบจุดสีม่วง, โรคต้นไหม้แห้งหน่อไม้ฝรั่ง, โรคใบจุดหน่อไม้ฝรั่ง, โรคราแป้ง, โรคราสนิม, โรคราสนิมขาว, โรคราเขม่า, โรคใบไหม้, โรคสแคป, โรคเมลาโนส, โรคใบจุดตานกในสตรอว์เบอร์รี่ เป็นต้น', './uploads/plantDisease1.png', '1', 2),
(34, 'คาร์วีติน เอสซี', 'สารป้องกันกำจัดโรคพืช', ' คาร์เบนดาซิม 50% W/V EC', ' เนื้อครีมสีขาว', ' 1000 มิลลิลิตร', '20-30 มิลลิลิตร ต่อน้ำ 20 ลิตร', 'เป็นสารกลุ่ม benzimidazoles มีคุณสมบัติเป็นสารดูดซึมและเคลื่อนย้าย ในต้นพืชมีฤทธิ์ครอบคลุมเชื้อโรคกว้างขวาง ยับยั้งการสร้างและพัฒนาเส้นใยของเชื้อรา กลไกออกฤทธิ์ย ับยั้งการแบ่งเซลล์แบบไม่อาศัยเพศ โดยขัดขวางเอนไซม์แอพเพรสซอเรียมที่ช่วยพัฒนาเส้นใยของเชื้อรา ทาให้สายโครโมโซม ที่แยกออกจากกันในขั้นตอนการแบ่งเซลล์แบบไม่อาศัยเพศไม่สามารถกลับมารวมกลุ่มที่บริเวณเบตา-ทูบูลินได้ และอาจยับยั้งการสังเคราะห์ วิตามิน บี12 ของเชื้อราบางชนิด', 'ใช้ป้องกันกาจัดโรคพืช เช่น โรคแอนแทรคโนส, โรคใบจุดตากบ, โรคใบจุดสีม่วง, โรคต้นไหม้แห้งหน่อไม้ฝรั่ง, โรคใบจุดหน่อไม้ฝรั่ง, โรคราแป้ง, โรคราสนิม, โรคราสนิมขาว, โรคราเขม่า, โรคใบไหม้, โรคสแคป, โรคเมลาโนส, โรคใบจุดตานกในสตรอว์เบอร์รี่ เป็นต้น', './uploads/plantDisease2.png', '1', 2),
(45, 'พีวีติน', ' สารป้องกันกำจัดโรคพืช', 'คาร์เบนดาซิม 50% W/V EC', 'เนื้อครีมสีขาว', '1000 มิลลิลิตร', '20-30 มิลลิลิตร ต่อน้ำ 20 ลิตร', 'เป็นสารกลุ่ม benzimidazoles มีคุณสมบัติเป็นสารดูดซึมและเคลื่อนย้าย ในต้นพืชมีฤทธิ์ครอบคลุมเชื้อโรคกว้างขวาง ยับยั้งการสร้างและพัฒนาเส้นใยของเชื้อรา กลไกออกฤทธิ์ย ับยั้งการแบ่งเซลล์แบบไม่อาศัยเพศ โดยขัดขวางเอนไซม์แอพเพรสซอเรียมที่ช่วยพัฒนาเส้นใยของเชื้อรา ทาให้สายโครโมโซม ที่แยกออกจากกันในขั้นตอนการแบ่งเซลล์แบบไม่อาศัยเพศไม่สามารถกลับมารวมกลุ่มที่บริเวณเบตา-ทูบูลินได้ และอาจยับยั้งการสังเคราะห์ วิตามิน บี12 ของเชื้อราบางชนิด', 'ใช้ป้องกันกาจัดโรคพืช เช่น โรคแอนแทรคโนส, โรคใบจุดตากบ, โรคใบจุดสีม่วง, โรคต้นไหม้แห้งหน่อไม้ฝรั่ง, โรคใบจุดหน่อไม้ฝรั่ง, โรคราแป้ง, โรคราสนิม, โรคราสนิมขาว, โรคราเขม่า, โรคใบไหม้, โรคสแคป, โรคเมลาโนส, โรคใบจุดตานกในสตรอว์เบอร์รี่ เป็นต้น', './uploads/plantDisease3.png', '1', 2),
(46, 'เมทาแลกซิล 35 (สีชมพู)', 'สารป้องกันกำจัดโรคพืช', ' เมทาแลกซิล (metalaxyl) 35% DS', 'ผงละเอียดสีชมพูเข้ม', '1000 กรัม', '25-50 กรัม ต่อน้ำ 20 ลิตร หรือ คลุกกับเมล็ดพันธุ์ 7 กรัม ต่อ เมล็ด 1 กิโลกรัม', 'เป็นสารในกลุ่ม acylalanines มีคุณสมบัติเป็นสารดูดซึม ยับยั้ง เส้นใย และการงอกของสปอร์เชื้อรา เนื้อละเอียด ละลายน้าดี ไม่อุดตันหัวฉีด เคลือบติดผิวใบพืชได้ดี ทนทานต่อการชะล้าง สามารถนาไปคลุกเมล็ดพันธุ์พืชได้ กลไกออกฤทธิ์ย ับยั้งขบวนการสังเคราะห์กรดนิวคลีอิค โดยขัดขวางการทางานของเอนไซม์ RNA polymerases 1', 'ใช้ป้องกันและกำจัดโรคพืช เช่น โรคใบไหม้ในมะเขือเทศ มันฝรั่ง, โรคใบจุดตาเสือเผือก, โรคผลเน่า ในเงาะ, โรคยอดเน่าต้นเน่าสับปะรด, โรคผลเน่ามะเขือเปราะ มะเขือพวง, โรครากเน่าโคนเน่าในทุเรียน ส้ม ส้มโอ มะละกอ, โรคเน่าดา, โรคยอดเน่าในกล้วยไม้ ที่มีสาเหตุเกิดจากเชื้อราไฟท็อปธอร่า โรคราน้าค้างในองุ่น ข้าวโพด หอม กระเทียม ถั่ว ถั่วแระ ถั่วฝักยาว กุหลาบ แตงกวา แตงโม เมล่อน เป็นต้น', './uploads/plantDisease4.png', '4', 2),
(47, 'เมทาแลกซิล 35 (สีขาว)', 'สารป้องกันกำจัดโรคพืช', ' เมทาแลกซิล (metalaxyl) 35% DS', ' ผงละเอียดสีชมพูเข้ม', ' 1000 กรัม', ' 25-50 กรัม ต่อน้ำ 20 ลิตร หรือ คลุกกับเมล็ดพันธุ์ 7 กรัม ต่อ เมล็ด 1 กิโลกรัม', 'เป็นสารในกลุ่ม acylalanines มีคุณสมบัติเป็นสารดูดซึม ยับยั้ง เส้นใย และการงอกของสปอร์เชื้อรา เนื้อละเอียด ละลายน้าดี ไม่อุดตันหัวฉีด เคลือบติดผิวใบพืชได้ดี ทนทานต่อการชะล้าง สามารถนาไปคลุกเมล็ดพันธุ์พืชได้ กลไกออกฤทธิ์ย ับยั้งขบวนการสังเคราะห์กรดนิวคลีอิค โดยขัดขวางการทางานของเอนไซม์ RNA polymerases 1', 'ใช้ป้องกันและกำจัดโรคพืช เช่น โรคใบไหม้ในมะเขือเทศ มันฝรั่ง, โรคใบจุดตาเสือเผือก, โรคผลเน่า ในเงาะ, โรคยอดเน่าต้นเน่าสับปะรด, โรคผลเน่ามะเขือเปราะ มะเขือพวง, โรครากเน่าโคนเน่าในทุเรียน ส้ม ส้มโอ มะละกอ, โรคเน่าดา, โรคยอดเน่าในกล้วยไม้ ที่มีสาเหตุเกิดจากเชื้อราไฟท็อปธอร่า โรคราน้าค้างในองุ่น ข้าวโพด หอม กระเทียม ถั่ว ถั่วแระ ถั่วฝักยาว กุหลาบ แตงกวา แตงโม เมล่อน เป็นต้น', './uploads/plantDisease5.png', '4', 2),
(48, 'พีซีพรอน 35 ดีเอส (สีขาว)', 'สารป้องกันกำจัดโรคพืช', 'เมทาแลกซิล (metalaxyl) 35% DS', 'ผงละเอียดสีชมพูเข้ม', '1000 กรัม', '25-50 กรัม ต่อน้ำ 20 ลิตร หรือ คลุกกับเมล็ดพันธุ์ 7 กรัม ต่อ เมล็ด 1 กิโลกรัม', 'เป็นสารในกลุ่ม acylalanines มีคุณสมบัติเป็นสารดูดซึม ยับยั้ง เส้นใย และการงอกของสปอร์เชื้อรา เนื้อละเอียด ละลายน้าดี ไม่อุดตันหัวฉีด เคลือบติดผิวใบพืชได้ดี ทนทานต่อการชะล้าง สามารถนาไปคลุกเมล็ดพันธุ์พืชได้ กลไกออกฤทธิ์ย ับยั้งขบวนการสังเคราะห์กรดนิวคลีอิค โดยขัดขวางการทางานของเอนไซม์ RNA polymerases 1', 'ใช้ป้องกันและกำจัดโรคพืช เช่น โรคใบไหม้ในมะเขือเทศ มันฝรั่ง, โรคใบจุดตาเสือเผือก, โรคผลเน่า ในเงาะ, โรคยอดเน่าต้นเน่าสับปะรด, โรคผลเน่ามะเขือเปราะ มะเขือพวง, โรครากเน่าโคนเน่าในทุเรียน ส้ม ส้มโอ มะละกอ, โรคเน่าดา, โรคยอดเน่าในกล้วยไม้ ที่มีสาเหตุเกิดจากเชื้อราไฟท็อปธอร่า โรคราน้าค้างในองุ่น ข้าวโพด หอม กระเทียม ถั่ว ถั่วแระ ถั่วฝักยาว กุหลาบ แตงกวา แตงโม เมล่อน เป็นต้น', './uploads/plantDisease6.png', '4', 2),
(49, 'พีซีพรอน 35 ดีเอส (สีชมพู)', 'สารป้องกันกำจัดโรคพืช', ' เมทาแลกซิล (metalaxyl) 35% DS', 'ผงละเอียดสีชมพูเข้ม', ' 1000 กรัม', '25-50 กรัม ต่อน้ำ 20 ลิตร หรือ คลุกกับเมล็ดพันธุ์ 7 กรัม ต่อ เมล็ด 1 กิโลกรัม', 'เป็นสารในกลุ่ม acylalanines มีคุณสมบัติเป็นสารดูดซึม ยับยั้ง เส้นใย และการงอกของสปอร์เชื้อรา เนื้อละเอียด ละลายน้าดี ไม่อุดตันหัวฉีด เคลือบติดผิวใบพืชได้ดี ทนทานต่อการชะล้าง สามารถนาไปคลุกเมล็ดพันธุ์พืชได้ กลไกออกฤทธิ์ย ับยั้งขบวนการสังเคราะห์กรดนิวคลีอิค โดยขัดขวางการทางานของเอนไซม์ RNA polymerases 1', 'ใช้ป้องกันและกำจัดโรคพืช เช่น โรคใบไหม้ในมะเขือเทศ มันฝรั่ง, โรคใบจุดตาเสือเผือก, โรคผลเน่า ในเงาะ, โรคยอดเน่าต้นเน่าสับปะรด, โรคผลเน่ามะเขือเปราะ มะเขือพวง, โรครากเน่าโคนเน่าในทุเรียน ส้ม ส้มโอ มะละกอ, โรคเน่าดา, โรคยอดเน่าในกล้วยไม้ ที่มีสาเหตุเกิดจากเชื้อราไฟท็อปธอร่า โรคราน้าค้างในองุ่น ข้าวโพด หอม กระเทียม ถั่ว ถั่วแระ ถั่วฝักยาว กุหลาบ แตงกวา แตงโม เมล่อน เป็นต้น', './uploads/plantDisease7.png', '4', 2),
(50, 'ครอบบา (สีชมพู)', 'สารป้องกันกำจัดโรคพืช', 'เมทาแลกซิล (metalaxyl) 35% DS', 'ผงละเอียดสีชมพูเข้ม', ' 1000 กรัม', ' 25-50 กรัม ต่อน้ำ 20 ลิตร หรือ คลุกกับเมล็ดพันธุ์ 7 กรัม ต่อ เมล็ด 1 กิโลกรัม', 'เป็นสารในกลุ่ม acylalanines มีคุณสมบัติเป็นสารดูดซึม ยับยั้ง เส้นใย และการงอกของสปอร์เชื้อรา เนื้อละเอียด ละลายน้าดี ไม่อุดตันหัวฉีด เคลือบติดผิวใบพืชได้ดี ทนทานต่อการชะล้าง สามารถนาไปคลุกเมล็ดพันธุ์พืชได้ กลไกออกฤทธิ์ย ับยั้งขบวนการสังเคราะห์กรดนิวคลีอิค โดยขัดขวางการทางานของเอนไซม์ RNA polymerases 1', 'ใช้ป้องกันและกำจัดโรคพืช เช่น โรคใบไหม้ในมะเขือเทศ มันฝรั่ง, โรคใบจุดตาเสือเผือก, โรคผลเน่า ในเงาะ, โรคยอดเน่าต้นเน่าสับปะรด, โรคผลเน่ามะเขือเปราะ มะเขือพวง, โรครากเน่าโคนเน่าในทุเรียน ส้ม ส้มโอ มะละกอ, โรคเน่าดา, โรคยอดเน่าในกล้วยไม้ ที่มีสาเหตุเกิดจากเชื้อราไฟท็อปธอร่า โรคราน้าค้างในองุ่น ข้าวโพด หอม กระเทียม ถั่ว ถั่วแระ ถั่วฝักยาว กุหลาบ แตงกวา แตงโม เมล่อน เป็นต้น', './uploads/plantDisease8.png', '4', 2),
(51, 'ครอบบา (สีขาว)', 'สารป้องกันกำจัดโรคพืช', 'เมทาแลกซิล (metalaxyl) 35% DS', 'ผงละเอียดสีชมพูเข้ม', ' 1000 กรัม', '25-50 กรัม ต่อน้ำ 20 ลิตร หรือ คลุกกับเมล็ดพันธุ์ 7 กรัม ต่อ เมล็ด 1 กิโลกรัม', 'เป็นสารในกลุ่ม acylalanines มีคุณสมบัติเป็นสารดูดซึม ยับยั้ง เส้นใย และการงอกของสปอร์เชื้อรา เนื้อละเอียด ละลายน้าดี ไม่อุดตันหัวฉีด เคลือบติดผิวใบพืชได้ดี ทนทานต่อการชะล้าง สามารถนาไปคลุกเมล็ดพันธุ์พืชได้ กลไกออกฤทธิ์ย ับยั้งขบวนการสังเคราะห์กรดนิวคลีอิค โดยขัดขวางการทางานของเอนไซม์ RNA polymerases 1', 'ใช้ป้องกันและกำจัดโรคพืช เช่น โรคใบไหม้ในมะเขือเทศ มันฝรั่ง, โรคใบจุดตาเสือเผือก, โรคผลเน่า ในเงาะ, โรคยอดเน่าต้นเน่าสับปะรด, โรคผลเน่ามะเขือเปราะ มะเขือพวง, โรครากเน่าโคนเน่าในทุเรียน ส้ม ส้มโอ มะละกอ, โรคเน่าดา, โรคยอดเน่าในกล้วยไม้ ที่มีสาเหตุเกิดจากเชื้อราไฟท็อปธอร่า โรคราน้าค้างในองุ่น ข้าวโพด หอม กระเทียม ถั่ว ถั่วแระ ถั่วฝักยาว กุหลาบ แตงกวา แตงโม เมล่อน เป็นต้น', './uploads/plantDisease9.png', '4', 2),
(52, 'ซุปเปอร์ ตายเรียบ', 'สารอินทรีย์ เพิ่มฤทธิ์การฆ่าหญ้า', ' Super Potassium Humate', ' เกล็ดสีดำ', ' 1000 กรัม', '- ใช้ซูปเปอร์ตายเรียบ 50 กรัม ต่อน้า 200 ลิตร, 100 กรัมต่อน้า 400 ลิตร - ใช้ซูปเปอร์ตายเรียบ ผสมกับปุ๋ยหว่าน 1 กก. ต่อปุ๋ยเคมี 50 กก.', 'สารกำจัดวัชพืชในนาข้าวประเภทเลือกทำลายในกลุ่ม chloroacetamides มีฤทธิ์ดูดซึม เข้าท่าลายวัชพืชส่วนที่อยู่ใต้ดินละยอดอ่อนวัชพืชที่พึ่งงอก กลไกออกฤทธิ์ต่อส่วนปลายยอดอ่อนของวัชพืช ยับยั้งการสังเคราะห์กรด ไขมันสายยาว ส่งผลยับยั้งการแบ่งเซลล์ส่วนปลายยอดเจริญ ทั้งวัชพืช ที่โผล่พ้นดินและยังไม่โผล่พ้นดิน', 'เพิ่มฤทธิ์สารกำจัดวัชพืช เช่น ไกลโฟเซต กลูโฟซิเนต อะทราซีน อะมีทรีน บิวทาคลอร์ อะซีโทคลอร์ เป็นต้น ไม่กลัวฝน เพราะดูดซึมได้รวดเร็ว สร้างรากใหม่ไว ระบบรากแข็งแรง ฟื้นต้นโทรม ให้พืชดูดปุ๋ยได้มาก ลดการใช้ปุ๋ย 30% 1กก. ผสมปุ๋ยได้ 50 กก. เพิ่มประสิทธิภาพในการดูดซึมของราก', './uploads/supplement1.png', '4', 5),
(53, 'ซุปเปอร์ แตกกอ', 'สารเพิ่มประสิทธิภาพ', 'Super Potassium Humate 95%', 'ผงละเอียดสีขาว', ' 1000 กรัม', '5-10 กรัม ต่อน้า 20 ลิตร 100 กรัม ต่อน้า 200 ลิตร ต่อ 7 ไร่', 'เป็นอินทรียวัตถุที่ละลายน้ำได้ดีและใช้ในการเพิ่มประสิทธิภาพพืช และสามารถทาละลายได้กับสารละลายชีวภาพบางชนิดเช่น แอลกอฮอล์ และกรดอินทรีย์ ค่าส่วนใหญ่จะเป็นกรดอ่อนๆ หรือด่างอ่อนๆ แล้วแต่ชนิดของผลิตภัณฑ์ โดยในผลิจภัณฑ์ซูปเปอร์ตายเรียบจะไม่มีความหนืด (Free flow) เพราะเป็นชนิดเกล็ด ขนาดของเกล็ด ประมาณ 2-4 มิลลิเมตรจะอยู่ในขนาดยิ่งขนาดเล็กคุณสมบัติ ในการละลายน้าจะสูงขนาดของพืชที่ผ ิวสัมผัสของรูปแบบเกล็ดคือ 30-60 ตารางเมตร/กรัม สามารถคงตัวได้ที่อุณหภูมิสูงกว่า 200 องศาเซลเซียส แต่ขึ้นกับปัจจัยอื่นๆ เช่น pH, ความเข้มข้น, และสสารอื่นๆ ที่รวมอยู่ในผลิตภัณฑ์ ค่าความหนาแน่นของ Super potassium Humate 1.3-1.5 g/cm3', 'Super Potassium Humate ประกอบขึ้นจากกรดฮิวมิกที่ มี ปริมาณอินทรีย์วัตถุจานวนมาก จากปริมาณของอินทรียวัตถุจึงเป็นแหล่งที่สะสมของธาตุโปแตสเซียม ที่สามารถใช้ในการปรับโครงสร้างของดิน โดยไม่จัดว่าเป็นปุ๋ย มีความสามารถในการละลายน้าสูง ง่ายต่อการใช้งาน มีความเข้ากันได้กับสารเคมีทั้งปุ๋ย, สารกาจัดแมลง, สารกาจัดวัชพืช เพื่อเพิ่มประสิทธิภาพสารเคมี Super Potassium Humate มีความสามารถในการกระตุ้นจุลชีพในดิน จากการที่ Super Potassium Humate เมื่อหลังจากการละลายน้ามีฤทธิ์เป็นกลางและช่วงปรับสภาพของการเป็นกรด-ด่างให้คงตัว หรืออาจจะเรียกได้ว่ามีคุณสมบัติของบัฟเฟอร์ Super Potassium Humate ช่วยในการเพิ่มอัตราการอุ้มน้าของดิน ลดต้องการน้าของพืช เพิ่มความทนทานของพืชในหน้าแล้ง จากคุณสมบัติของการเป็น Chelate ของ Potassium Humate มีความสามารถในการเป็นตัวพาทั้งสารเคมีและสารอาหารให้กับต้นพืช จากการเพิ่ม Chelate ของดิน จากการปรับคุณภาพของดิน ส่งผลให้เพิ่มประสิทธิภาพต่อการเจริญเติบโตต่อพืชโดยตรง และมีผลในการเพิ่มผลผลิต', './uploads/supplement2.png', '4', 5),
(54, 'โฟล-อัพ', 'สารอินทรีย์สกัดเข้มข้น', 'Humic Acid', 'ของเหลวสีดำ', '1000 มิลลิลิตร', ' 5-10 ซีซี ต่อน้ำ 200 ลิตร', 'เป็นหัวเชื้ออินทรีย์เข้มข้น ใช้ฉีดพ่นทางใบ ช่วยให้พืชเจริญอาหาร กระตุ้นให้รากพืชดูดกินปุ๋ยและสารอาหารในดินได้มากกว่าปกติ เมื่อผสมรวมกับปุ๋ยเกล็ด หรือปุ๋ยน้า ฉีดพ่นเป็นประจำจะทาให้พืช เจริญงอกงาม โตเร็ว แข็งแรง ใบมีสีเขียวสด ให้ผลดก มีคุณภาพดี ใช้ได้ดีกับ พืชผัก, พืชไร่, พืชสวน, ไม้ดอกไม้ประดับ และในนาข้าว', 'ก่อให้เกิดประโยชน์ต่อการเจริญเติบโตของพืช และคุณสมบัติของดิน เช่น -เพิ่มการอุ้มน้าของดิน -ช่วยยึดปุ๋ยไม่ให้ถูกชะล้างได้ง่าย และสามารถปลดปล่อยธาตุอาหารให้พืชเวลาที่พืชต้องการ -ป้องกันการพังทลายของดิน', './uploads/supplement3.png', '1', 5),
(55, 'เมคอัพ', 'สารอินทรีย์สกัดเข้มข้น', 'Humic Acid', ' ของเหลวสีดำ', ' 1000 มิลลิลิตร', ' 5-10 ซีซี ต่อน้ำ 200 ลิตร', 'เป็นหัวเชื้ออินทรีย์เข้มข้น ใช้ฉีดพ่นทางใบ ช่วยให้พืชเจริญอาหาร กระตุ้นให้รากพืชดูดกินปุ๋ยและสารอาหารในดินได้มากกว่าปกติ เมื่อผสมรวมกับปุ๋ยเกล็ด หรือปุ๋ยน้า ฉีดพ่นเป็นประจำจะทาให้พืช เจริญงอกงาม โตเร็ว แข็งแรง ใบมีสีเขียวสด ให้ผลดก มีคุณภาพดี ใช้ได้ดีกับ พืชผัก, พืชไร่, พืชสวน, ไม้ดอกไม้ประดับ และในนาข้าว', 'ก่อให้เกิดประโยชน์ต่อการเจริญเติบโตของพืช และคุณสมบัติของดิน เช่น -เพิ่มการอุ้มน้าของดิน -ช่วยยึดปุ๋ยไม่ให้ถูกชะล้างได้ง่าย และสามารถปลดปล่อยธาตุอาหารให้พืชเวลาที่พืชต้องการ -ป้องกันการพังทลายของดิน', './uploads/supplement4.png', '1', 5),
(56, 'ทีเอ็นซิงค์', 'ธาตุอาหารเสริม สังกะสี 5%', '-', ' ของเหลวสีน้ำตาลออกดำ', ' 1000 มิลลิลิตร', ' 1-2 ลิตรของ TN Zinc /10,000 ตารางเมตร (เฮกตาร์) 160 มล.-320 มล. หรือ 150-300 มล. ต่อไร่ 10-20 มิลลิลิตร / 20 ลิตร - 200 มิลลิลิตร / 200 ลิตร 20 ลิตรของสารผสม /2.4-3.6 ไร่ หรือ 2-4 ไร่', 'สารสกัดจากสาหร่ายมีองค์ประกอบหลายชนิดที่ช่วยในการเจริญเติบโตของพืช รวมทั้งฮอร์โมนพืชคือไซโตไคนิน ที่ช่วยในการเพิ่มการเจริญเติบโต ของรากและออกซินที่ช ่วยในการเพิ่มการเจริญเติบโตของกิ่ง สารสกัดอะมิโนจากถั่วเหลืองมีองค์ประกอบที่ช ่วยให้พืชเจริญเติบโตหลายชนิดเช่นกัน และรวมไปถึง Zn DTPA (สังกะสีดีทีพีเอ) จะช่วยในการเสริมแร่ธาตุรองที่จ าเป็นเช่นสังกะสี ที่มีความสามารถในการเพิ่มการเจริญเติบโต และสร้างความแข็งแรงแก่ต้นพืช', 'Amino acid ในผลิตภัณฑ์ สามารถเป็นตัวช่วยเสริมการดูดซึมสารอาหารโดยตรง ที่รากพืชเพื่อเป็นตัวพาสารอาหารอื่นๆ ในดินได้และจากธาตุอาหารสังกะสี ก็ช่วยในการเร่งการดูดซึมสารอาหารได้ดียิ่งขึ้น ลดภาวะเครียดของพืช เพิ่มความแข็งแรงแก่พืช เพิ่มการพัฒนาราก เป็นแหล่งแร่ธาตุของสังกะสี และช่วยเพิ่มผลผลิต', './uploads/supplement5.png', '1', 5),
(57, 'ทีเอ็นแคน', ' ธาตุอาหารเสริม แคลเซียม 9%', '- ', 'ของเหลวสีน้ำตาลออกดำ', '1000 มิลลิลิตร', ' 1-2 ลิตรของ TN Zinc /10,000 ตารางเมตร (เฮกตาร์) 160 มล.-320 มล. หรือ 150-300 มล. ต่อไร่ 10-20 มิลลิลิตร / 20 ลิตร - 200 มิลลิลิตร / 200 ลิตร 20 ลิตรของสารผสม /2.4-3.6 ไร่ หรือ 2-4 ไร่', 'ธาตุอาหารไม่เพียงพอ หรือ ความไม่สมดุลของธาตุอาหาร ความสำคัญเสริมสร้างความแข็งแรงของเนื้อเยื่อและเซลล์ฟิชกระตุ้นการดูดซับธาตุอาหารของ ราก และการเคลื่อนที่ธาตุอาหารในพืช แคลเซียมเป็นธาตอาหารที่มีบทบาทสำคัญ เกี่ยวกับคุณภาพผลผลิตของพืชไม้ผลและพืชผักต่าง ๆ แคลเซียมช่วยยืดอายุการเก็บรักษาผลผลิต ทาให้การเน่าเบื่อช้าลง ความสำคัญของแคลเซียมต่อคุณภาพผลผลิตนับวันจะมีความสำคัญเพิ่มมากขึ้น เนื่องจากมีข้อมูลเพิ่มขึ้นเกี่ยวกับบทบาท ของ แคลเซียม ไม้ผล พืชผัก และไม้ดอกมีความต้องการแคลเซียมมากกว่าธัญพืช เช่นข้าวหรือข้าวโพด', 'เป็นโครงสร้างผนังเซลล์ของพืช ทำให้พืชมีความแข็งแรง และช่วยในการสร้างโปรตีน ช่วยขยายขนาดของผล และป้องกันไม่ให้ผลเถา หรือผักแตก ทาให้เนื้อแน่น ป้องกันแกนไส้นิ่ม รสชาติและสีดีขึ้น', './uploads/supplement6.png', '1', 5),
(58, 'ทีเอ็นแม็กซ์', 'ธาตุอาหารเสริม แมกนีเซียม 7%', '-', ' ของเหลวสีน้าตาลออกดำ', ' 1000 มิลลิลิตร', '1-2 ลิตรของ TN Zinc /10,000 ตารางเมตร (เฮกตาร์) 160 มล.-320 มล. หรือ 150-300 มล. ต่อไร่ 10-20 มิลลิลิตร / 20 ลิตร - 200 มิลลิลิตร / 200 ลิตร 20 ลิตรของสารผสม /2.4-3.6 ไร่ หรือ 2-4 ไร่', 'ผลิตภัณฑ์ประกอบด้วยแร่ธาตุแมกนีเซียม ที่ช่วยพืชในการสังเคราะห์แสง การทางานของเอมไซม์ และสุขภาพโดยรวมของพืช สารสกัดจากสาหร่าย ช่วยในการเสริมแร่ธาตุและฮอร์โมนต่างๆ รวมไปถึงองค์ประกอบทางของสารชีวมวล เพิ่มความสามารถในการดูดซึมสารอาหารของพืชจากความสามารถของ Magnesium EDTA ที่สามารถนาแร่ธาตุแมกนีเซียมเข้าสู่พืชอย่างมีประสิทธิภาพ สารสกัดจากสาหร่าย และกรดอะมิโน ช่วยกระตุ้นการเจริญเติบโตของรากและช่วยในการเพิ่มการดูดซึมสารอาหาร', 'ในผลิตภัณฑ์มีส่วนผสมของ Magnesium chelate (Magnesium EDTA) ที่เป็นส่วนประกอบของอนุพันธ์ที่เสถียรของ แมกนีเซียมไอออน การที่อยู่ในรูป Chelate สามารถช่วยในการเพิ่มประสิทธิภาพการดูดซึมและการนำไปใช้ได้ดีมากขึ้น โดยพืชจะใช้ แมกนีเซียมในกระบวนการสังเคราะห์แสง การทำงานของเอนไซม์ เกี่ยวกับการสังเคราะห์โปรตีนและคาร์โบไฮเดรต กระบวนการถ่ายเทพลังงานที่เป็นส่วนประกอบของ ATP, กระบวนการขนย้ายแร่ธาตุ และการรักษาสมดุลของไอออนในเซลล์ของพืช และช่วยในการสร้างโครงสร้างของเซลล์พืชเช่นไรโบโซม และ DNA RNA', './uploads/supplement7.png', '1', 5),
(59, 'เรนนี่', ' สารจับใบ', ' คาร์เบนดาซิม 50% W/V EC', ' ของเหลวสีเหลืองอ่อน', '1000 มิลลิลิตร', 'ชนิดของสารเคมี ผสมน้ำ 20 ลิตร ยาฆ่าแมลง 15ซีซี.-30ซีซี. (1-2 ช้อนแกง) ยากาจัดวัชพืช 30ซีซี. (2 ช้อนแกง) ยากาจัดโรครา 15ซีซี.-30ซีซี. (1-2 ช้อนแกง) ปุ๋ยเกร็ด ปุ๋ยน้า ฮอร์โมน 30ซีซี. (2 ช้อนแกง)', 'ช่วยในการผสมสารละลายที่ไม่สามารถเข้ากันได้เช่น น้าและน้ำมันจากคุณสมบัติของ อิมัลซิไฟเออร์ (Emulsifier) ปรับสภาพน้ำกระด้างได้ ปกป้องความเป็นพิษของยาคุมกับพืชประธาน มีความสามารถในการเพิ่มการกระจายตัวของสารเคมีบนใบพืช ความสามารถในการละลายน้ำและการกระจายตัวของสารเคมี ออกฤทธิ์นานกว่าแม้ในสภาพแล้ง ควบคุมวัชพืชทั้งก่อนงอกและหลังงอกในกลุ่มพืชไร่ได้ดีเยี่ยม', 'weed เช่น แมลงหวี่ขาว, เพลี้ย, จักจั่น , ไรแดง, เพลี้ยฝอย, หนอนใบขาว, หนอนกอ, หนอน, หนอนเจาะ, ผ่าดอก', './uploads/supplement8.png', '1', 5),
(60, 'บิวทาคลอร์', 'สารกำจัดวัชพืช', 'บิวทาคลอร์ 60% W/V EC', 'ของเหลวสีน้าเงินม่วง', '1000 มิลลิลิตร', '200-250 มิลลิลิตร ผสมน้ำ 60-80 ลิตร พ่นบนพื้นที่ 1 ไร่', 'สารกำจัดวัชพืชในนาข้าวประเภทเลือกทำลายในกลุ่ม chloroacetamides มีฤทธิ์ดูดซึม เข้าทำลายวัชพืชส่วนที่อยู่ใต้ดินละยอดอ่อนวัชพืชที่พึ่งงอก กลไกออกฤทธิ์ต่อส่วนปลายยอดอ่อนของวัชพืช ยับยั้งการสังเคราะห์กรด ไขมันสายยาว ส่งผลยับยั้งการแบ่งเซลล์ส่วนปลายยอดเจริญ ทั้งวัชพืช ที่โผล่พ้นดินและยังไม่โผล่พ้นดิน', 'ใช้กำจัดวัชพืชก่อนวัชพืชงอก และใช้หลังวัชพืชงอกระยะเริ่มต้นในนาข้าว หว่านน้าตม, ข้าวนาหว่านแห้ง, ข้าวไร่ กำจัดวัชพืชประเภทใบแคบ เช่น หญ้าแดง,หญ้าดอกขาว, หญ้าข้าวนก, หญ้านกสีชมพู, วัชพืชประเภทใบกว้าง เช่น ผักปอด, ขาเขียด, ผีกปลาบ และกก เช่น หนวดปลาดุก, แห้วหมู, กกขนาก, กกทราย, กกแดง, กกสามเหลี่ยม เป็นต้น', './uploads/weed1.png', 'K3', 4),
(61, 'บาบูคลอร์', ' สารกำจัดวัชพืช', ' บิวทาคลอร์ 60% W/V EC', 'ของเหลวสีน้าเงินม่วง', '1000 มิลลิลิตร', ' 200-250 มิลลิลิตร ผสมน้ำ 60-80 ลิตร พ่นบนพื้นที่ 1 ไร่', 'สารกำจัดวัชพืชในนาข้าวประเภทเลือกทำลายในกลุ่ม chloroacetamides มีฤทธิ์ดูดซึม เข้าทำลายวัชพืชส่วนที่อยู่ใต้ดินละยอดอ่อนวัชพืชที่พึ่งงอก กลไกออกฤทธิ์ต่อส่วนปลายยอดอ่อนของวัชพืช ยับยั้งการสังเคราะห์กรด ไขมันสายยาว ส่งผลยับยั้งการแบ่งเซลล์ส่วนปลายยอดเจริญ ทั้งวัชพืช ที่โผล่พ้นดินและยังไม่โผล่พ้นดิน', 'ใช้กำจัดวัชพืชก่อนวัชพืชงอก และใช้หลังวัชพืชงอกระยะเริ่มต้นในนาข้าว หว่านน้าตม, ข้าวนาหว่านแห้ง, ข้าวไร่ กำจัดวัชพืชประเภทใบแคบ เช่น หญ้าแดง,หญ้าดอกขาว, หญ้าข้าวนก, หญ้านกสีชมพู, วัชพืชประเภทใบกว้าง เช่น ผักปอด, ขาเขียด, ผีกปลาบ และกก เช่น หนวดปลาดุก, แห้วหมู, กกขนาก, กกทราย, กกแดง, กกสามเหลี่ยม เป็นต้น', './uploads/weed2.png', 'K3', 4),
(62, 'ทีเอ็นทาคลอร์', 'สารกำจัดวัชพืช', 'บิวทาคลอร์ 60% W/V EC', 'ของเหลวสีน้าเงินม่วง', ' 1000 มิลลิลิตร', ' 200-250 มิลลิลิตร ผสมน้ำ 60-80 ลิตร พ่นบนพื้นที่ 1 ไร่', 'สารกำจัดวัชพืชในนาข้าวประเภทเลือกทำลายในกลุ่ม chloroacetamides มีฤทธิ์ดูดซึม เข้าทำลายวัชพืชส่วนที่อยู่ใต้ดินละยอดอ่อนวัชพืชที่พึ่งงอก กลไกออกฤทธิ์ต่อส่วนปลายยอดอ่อนของวัชพืช ยับยั้งการสังเคราะห์กรด ไขมันสายยาว ส่งผลยับยั้งการแบ่งเซลล์ส่วนปลายยอดเจริญ ทั้งวัชพืช ที่โผล่พ้นดินและยังไม่โผล่พ้นดิน', 'ใช้กำจัดวัชพืชก่อนวัชพืชงอก และใช้หลังวัชพืชงอกระยะเริ่มต้นในนาข้าว หว่านน้าตม, ข้าวนาหว่านแห้ง, ข้าวไร่ กำจัดวัชพืชประเภทใบแคบ เช่น หญ้าแดง,หญ้าดอกขาว, หญ้าข้าวนก, หญ้านกสีชมพู, วัชพืชประเภทใบกว้าง เช่น ผักปอด, ขาเขียด, ผีกปลาบ และกก เช่น หนวดปลาดุก, แห้วหมู, กกขนาก, กกทราย, กกแดง, กกสามเหลี่ยม เป็นต้น', './uploads/weed3.png', 'K3', 4),
(63, 'กลูโฟซิเนต-แอมโมเนียม', ' สารกำจัดวัชพืช', ' กลูโฟซิเนต-แอมโมเนียม', ' ของเหลวสีฟ้าใส', '4 ลิตร', ' - ใช้กำจัดวัชพืชที่มีความสูงไม่เกิน 30 ซม. ใช้อัตรา 600-800 มล. ต่อน้ำ 60-80 ลิตรพ่นบนพื้นที่ 1 ไร่ หรือ อัตรา 150-200 มล. ต่อน้ำ 15-20 ลิตร พ่นบน พื้นที่ 1 งาน - วัชพืชข้ามปี ใช้อัตรา 1600-3200 มล. ผสมน้ำ 60-80 ลิตร พ่นบนพื้นที่ 1 ไร่ หรืออัตรา 400-800 ', 'สารกำจัดวัชพืชแบบเลือกทาลาย ในกลุ่ม dinitroanilines เป็นสารดูดซึมเข้าทางราก และใบวัชพืช ทาให้วัชพืชตายอย่างรวดเร็วแต่เริ่มงอกขณะโผล่พ้นผิวดิน กลไกออกฤทธิ์ต่อส่วนปลายรากของวัชพืช ยับยั้งการสังเคราะห์ กรดไขมันสายยาวส่งผลยับยั้งการแบ่งเซลล์และการยืดตัวของเซลล์ส่วนระบบราก ทำให้ต้นอ่อนวัชพืชชะงักการเจริญและตายก่อนโผล่พ้นดิน', 'ใช้กำจัดวัชพืชก่อนวัชพืชงอกและหลังวัชพืชงอกในระยะเริ่มต้นในอ้อย, กล้วย, สับปะรด, ข้าวโพด และส้ม กาจัดวัชพืชประเภทใบแคบ เช่น หญ้าตีนนก, หญ้าตีนกา, หญ้านกสีชมพู, หญ้าปากควาย, หญ้ารังนก และใบกว้าง เช่น ผักเบี้ยหิน, ผักเบี้ยใหญ่, ผักโขม, ผักโขมหนาม เป็นต้น', './uploads/weed4.png', 'K1', 4),
(64, 'อะซีโทคลอร์', 'สารป้องกันกำจัดโรคพืช', 'อะซีโทคลอร์ 50% W/V EC', ' ของเหลวสีแดงใส', '1000 มิลลิลิตร', '400-500 มิลลิลิตร ต่อน้ำ 60-80 ลิตร พ่นบนพื้นที่ 1 ไร่ หรือ100-125 มิลลิลิตร ผสมน้ำ 15-20 ลิตร พ่นบนพื้นที่ 1 งาน', 'สารกำจัดวัชพืชประเภทเลือกทำลายในกลุ่ม chloroacetamides มีฤทธิ์ดูดซึม กำจัดวัชพืชส่วนที่อยู่ใต้ดิน ยอดอ่อน ใช้คุมวัชพืชก่อนงอก นาน 4-6 สัปดาห์ ปลอดภัยต่อพืชปลูก กลไกออกฤทธิ์ต่อส่วนปลายยอดอ่อนของวัชพืช ยับยั้ง การสังเคราะห์กรดไขมันสายยาวส่งผลยับยั้งการแบ่งเซลล์ส่วนปลายยอดเจริญ ทั้งวัชพืชที่ โผล่พันดินละยังไม่โผล่พ้นดิน', 'ใช้คุมวัชพืชก่อนวัชพืชงอกในข้าวโพด, ถั่ว, อ้อย, มันฝรั่ง, มะเขือเทศ, พริก, หอม, กระเทียม, กระหล่ำปลี, ผักกาด, พืชผัก พืชสวนต่างๆ ใช้ควบคุม วัชพืชประเภทใบแคบ เช่น หญ้าตีนนก, หญ้ารังนก, หญ้าชันกาด, หญ้าขจรจบ, หญ้าตีนกา และหญ้าขน วัชพืชประเภทใบกว้าง เช่น สาบเสือ, สาบแร้ง, สาบกา, ไมยราบเลื้อย, เซ่งใบมน, หญ้ายาง, ผักเบี้ยใหญ่, ผักโขม, โสนหางไก่ เป็นต้น', './uploads/weed5.png', 'K3', 4),
(65, 'เมเบิ้ลโทคลอร์', 'สารป้องกันกำจัดโรคพืช', 'อะซีโทคลอร์ 50% W/V EC', 'ของเหลวสีแดงใส', '1000 มิลลิลิตร', ' 400-500 มิลลิลิตร ต่อน้ำ 60-80 ลิตร พ่นบนพื้นที่ 1 ไร่ หรือ100-125 มิลลิลิตร ผสมน้ำ 15-20 ลิตร พ่นบนพื้นที่ 1 งาน', 'สารกำจัดวัชพืชประเภทเลือกทำลายในกลุ่ม chloroacetamides มีฤทธิ์ดูดซึม กำจัดวัชพืชส่วนที่อยู่ใต้ดิน ยอดอ่อน ใช้คุมวัชพืชก่อนงอก นาน 4-6 สัปดาห์ ปลอดภัยต่อพืชปลูก กลไกออกฤทธิ์ต่อส่วนปลายยอดอ่อนของวัชพืช ยับยั้ง การสังเคราะห์กรดไขมันสายยาวส่งผลยับยั้งการแบ่งเซลล์ส่วนปลายยอดเจริญ ทั้งวัชพืชที่ โผล่พันดินละยังไม่โผล่พ้นดิน', 'ใช้คุมวัชพืชก่อนวัชพืชงอกในข้าวโพด, ถั่ว, อ้อย, มันฝรั่ง, มะเขือเทศ, พริก, หอม, กระเทียม, กระหล่ำปลี, ผักกาด, พืชผัก พืชสวนต่างๆ ใช้ควบคุม วัชพืชประเภทใบแคบ เช่น หญ้าตีนนก, หญ้ารังนก, หญ้าชันกาด, หญ้าขจรจบ, หญ้าตีนกา และหญ้าขน วัชพืชประเภทใบกว้าง เช่น สาบเสือ, สาบแร้ง, สาบกา, ไมยราบเลื้อย, เซ่งใบมน, หญ้ายาง, ผักเบี้ยใหญ่, ผักโขม, โสนหางไก่ เป็นต้น', './uploads/weed6.png', 'K3', 4),
(66, 'ทีเอ็นโทคลอร์', 'สารป้องกันกำจัดโรคพืช', ' อะซีโทคลอร์ 50% W/V EC', 'ของเหลวสีแดงใส', ' 1000 มิลลิลิตร', '400-500 มิลลิลิตร ต่อน้ำ 60-80 ลิตร พ่นบนพื้นที่ 1 ไร่ หรือ100-125 มิลลิลิตร ผสมน้ำ 15-20 ลิตร พ่นบนพื้นที่ 1 งาน', 'สารกำจัดวัชพืชประเภทเลือกทำลายในกลุ่ม chloroacetamides มีฤทธิ์ดูดซึม กำจัดวัชพืชส่วนที่อยู่ใต้ดิน ยอดอ่อน ใช้คุมวัชพืชก่อนงอก นาน 4-6 สัปดาห์ ปลอดภัยต่อพืชปลูก กลไกออกฤทธิ์ต่อส่วนปลายยอดอ่อนของวัชพืช ยับยั้ง การสังเคราะห์กรดไขมันสายยาวส่งผลยับยั้งการแบ่งเซลล์ส่วนปลายยอดเจริญ ทั้งวัชพืชที่ โผล่พันดินละยังไม่โผล่พ้นดิน', 'ใช้คุมวัชพืชก่อนวัชพืชงอกในข้าวโพด, ถั่ว, อ้อย, มันฝรั่ง, มะเขือเทศ, พริก, หอม, กระเทียม, กระหล่ำปลี, ผักกาด, พืชผัก พืชสวนต่างๆ ใช้ควบคุม วัชพืชประเภทใบแคบ เช่น หญ้าตีนนก, หญ้ารังนก, หญ้าชันกาด, หญ้าขจรจบ, หญ้าตีนกา และหญ้าขน วัชพืชประเภทใบกว้าง เช่น สาบเสือ, สาบแร้ง, สาบกา, ไมยราบเลื้อย, เซ่งใบมน, หญ้ายาง, ผักเบี้ยใหญ่, ผักโขม, โสนหางไก่ เป็นต้น', './uploads/weed7.png', 'K3', 4),
(67, '2,4-ดี-ไดเมทิลแอมโมเนียม', 'สารป้องกันกำจัดโรคพืช', '2,4-ดี-ไดเมทิลแอมโมเนียม', 'ของเหลวสีใส', ' 1000 มิลลิลิตร', 'ใช้อัตรา 160-180 มิลลิลิตร ผสมน้ำ 60-80 ลิตร พ่นบนพื้นที่ 1 ไร่ หรืออัตรา 40-45 มิลลิลิตร ผสมน้า 15-20 ลิตร พ่นบนพื้นที่ 1 งาน หลังหว่านข้าว 20 วันก่อนพ่นสารให้ระบายน้ำออก และทดน้ำเข้านาหลังพ่นสาร 2-3 วัน', 'สารกำจัดวัชพืชในนาข้าวประเภทเลือกทำลาย ในกลุ่ม phenoxy-carboxylic acids มีฤทธิ์ดูดซึม ใช้ก่อนวัชพืชงอกและหลังวัชพืชงอก กลไกออกฤทธิ์ของ 2, 4-D เป็นสารควบคุมการเจริญเติบโตของพืช ที่ก่อให้เกิดความเป็นพิษต่อวัชพืช ทำให้ผนังเซลล์แข็งและหดตัวเมทาบอลิซึมกรดนิวคลีอิกลดลง การสังเคราะห์โปรตีนและการแบ่งเซลล์ผิดปกติ และกระตุ้นการสร้างเอทีลีน ส่งผลให้วัชพืชชะงักการเจริญเติบโต ใบหงิก เรียว ใบซีดเหลืองและตาย', 'ใช้หลังวัชพืชงอก ในข้าวนาหว่านน้ำตม เพื่อกาจัดวัชพืชประเภทใบกว้าง เช่น ผักปอดนา และเทียนนา และวัชพืชประเภทกก เช่น หนวดปลาดุก, กกขนาก และแห้วหมูนา', './uploads/weed8.png', '1', 4),
(68, 'ทีเอ็น โฟดี', ' สารป้องกันกำจัดโรคพืช', '2,4-ดี-ไดเมทิลแอมโมเนียม', ' ของเหลวสีใส', '1000 มิลลิลิตร', ' ใช้อัตรา 160-180 มิลลิลิตร ผสมน้ำ 60-80 ลิตร พ่นบนพื้นที่ 1 ไร่ หรืออัตรา 40-45 มิลลิลิตร ผสมน้า 15-20 ลิตร พ่นบนพื้นที่ 1 งาน หลังหว่านข้าว 20 วันก่อนพ่นสารให้ระบายน้ำออก และทดน้ำเข้านาหลังพ่นสาร 2-3 วัน', 'สารกำจัดวัชพืชในนาข้าวประเภทเลือกทำลาย ในกลุ่ม phenoxy-carboxylic acids มีฤทธิ์ดูดซึม ใช้ก่อนวัชพืชงอกและหลังวัชพืชงอก กลไกออกฤทธิ์ของ 2, 4-D เป็นสารควบคุมการเจริญเติบโตของพืช ที่ก่อให้เกิดความเป็นพิษต่อวัชพืช ทำให้ผนังเซลล์แข็งและหดตัวเมทาบอลิซึมกรดนิวคลีอิกลดลง การสังเคราะห์โปรตีนและการแบ่งเซลล์ผิดปกติ และกระตุ้นการสร้างเอทีลีน ส่งผลให้วัชพืชชะงักการเจริญเติบโต ใบหงิก เรียว ใบซีดเหลืองและตาย', 'ใช้หลังวัชพืชงอก ในข้าวนาหว่านน้ำตม เพื่อกาจัดวัชพืชประเภทใบกว้าง เช่น ผักปอดนา และเทียนนา และวัชพืชประเภทกก เช่น หนวดปลาดุก, กกขนาก และแห้วหมูนา', './uploads/weed9.png', '1', 4),
(69, 'บาบูโซ-ดี', 'สารป้องกันกำจัดโรคพืช', ' 2,4-ดี-ไดเมทิลแอมโมเนียม', ' ของเหลวสีใส', ' 1000 มิลลิลิตร', ' ใช้อัตรา 160-180 มิลลิลิตร ผสมน้ำ 60-80 ลิตร พ่นบนพื้นที่ 1 ไร่ หรืออัตรา 40-45 มิลลิลิตร ผสมน้า 15-20 ลิตร พ่นบนพื้นที่ 1 งาน หลังหว่านข้าว 20 วันก่อนพ่นสารให้ระบายน้ำออก และทดน้ำเข้านาหลังพ่นสาร 2-3 วัน', 'สารกำจัดวัชพืชในนาข้าวประเภทเลือกทำลาย ในกลุ่ม phenoxy-carboxylic acids มีฤทธิ์ดูดซึม ใช้ก่อนวัชพืชงอกและหลังวัชพืชงอก กลไกออกฤทธิ์ของ 2, 4-D เป็นสารควบคุมการเจริญเติบโตของพืช ที่ก่อให้เกิดความเป็นพิษต่อวัชพืช ทำให้ผนังเซลล์แข็งและหดตัวเมทาบอลิซึมกรดนิวคลีอิกลดลง การสังเคราะห์โปรตีนและการแบ่งเซลล์ผิดปกติ และกระตุ้นการสร้างเอทีลีน ส่งผลให้วัชพืชชะงักการเจริญเติบโต ใบหงิก เรียว ใบซีดเหลืองและตาย', 'ใช้หลังวัชพืชงอก ในข้าวนาหว่านน้ำตม เพื่อกาจัดวัชพืชประเภทใบกว้าง เช่น ผักปอดนา และเทียนนา และวัชพืชประเภทกก เช่น หนวดปลาดุก, กกขนาก และแห้วหมูนา', './uploads/weed10.png', '1', 4);

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id`, `name`) VALUES
(1, 'ฮอร์โมน'),
(2, 'โรคพืช'),
(3, 'แมลง'),
(4, 'วัชพืช'),
(5, 'สารเสริม');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password_hash`, `created_at`, `first_name`, `last_name`, `birthdate`, `position`) VALUES
(2, 'admin', '$2y$10$CPATqlEe2JzysL60kCRCieeOjez2QPDBlc7qBJzg2IFfW2e7bzVse', '2024-07-14 17:28:58', 'admin', 'admin', '2024-07-09', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_type` (`type_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lab`
--
ALTER TABLE `lab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_type` FOREIGN KEY (`type_id`) REFERENCES `product_type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
