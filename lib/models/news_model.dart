//while the app is building let's create the NewsData class

class NewsData {
  String? title;
  String? author;
  String? content;
  String? urlToImage;
  String? date;

  //let's create the constructor
  NewsData(
    this.title,
    this.author,
    this.content,
    this.date,
    this.urlToImage,
  );

  //we will use dummy data to generate the news,but you can use a third party api or your own backend to extract the data
  //I will copy the data from my previous code, you can create your own data , I used newsApi to get the data
  static List<NewsData> breakingNewsData = [
    NewsData(
        "Cầu nối Hải Phòng với Quảng Ninh sau một năm khởi công",
        "Lê Tân",
        "Cầu Bến Rừng được đầu tư 2.000 tỷ đồng, vượt qua sông Đá Bạch và 1,85 ha rừng ngập mặn, nối huyện Thủy Nguyên (Hải Phòng) với thị xã Quảng Yên (Quảng Ninh).",
        "2023-02-18",
        "lib/images/new1.jpg"),
    NewsData(
        "6 tháng Nga chuẩn bị chiến dịch tấn công mới ở Ukraine",
        "Thanh Tâm",
        "Nga đã huy động nhân lực và chuẩn bị vật lực trong 6 tháng qua để mở chiến dịch tấn công mới nhằm giành thế chủ động trước Ukraine. Quân đội Nga tuần qua liên tục mở các cuộc tấn công vào loạt thành phố ở vùng Donbass, ngoài hai điểm nóng Bakhmut và Ugledar. Giới quan sát cho rằng đây là dấu hiệu cho thấy Nga sắp mở chiến dịch quy mô lớn trên toàn mặt trận, sau nhiều tháng hứng chịu các bước lùi liên tiếp trước quân đội Ukraine.",
        "2022-02-18",
        "lib/images/new2.jpg"),
    NewsData(
        "Những người lèo lái kinh tế Ukraine từ hầm tránh bom",
        "Hà Thu",
        "Chiến sự khiến quan chức Ngân hàng Trung ương Ukraine phải thảo luận gói cứu trợ với IMF trước một màn hình laptop, trong căn phòng chỉ rộng 4m2. Rạng sáng ngày 24/2/2022, Phó thống đốc Ngân hàng Trung ương Ukraine Serhiy Nikolaychuk tỉnh giấc vì cuộc gọi của mẹ từ nước ngoài. Chuyến bay của bà về Kyiv đã bị hủy. Bà cũng đọc được tin xe tăng Nga đã đi qua biên giới Ukraine. Vài phút sau, Nikolaychuk phải lao đến văn phòng để họp khẩn. \"Vài suy nghĩ đã thoáng qua trong đầu tôi khi đó. Một là lo cho gia đình. Hai là cảm thấy mình có trách nhiệm lớn với quốc gia\".",
        "2022-02-18",
        "lib/images/new3.jpg"),
  ];

  static List<NewsData> recentNewsData = [
    NewsData(
        "Người chết trong động đất Thổ Nhĩ Kỳ, Syria tăng lên gần 44.000",
        "Như Tâm",
        "Số người thiệt mạng trong thảm họa động đất ở Thổ Nhĩ Kỳ, Syria tăng lên gần 44.000, trong khi cơ hội tìm thấy người sống sót ngày càng giảm. 38.044 người ở 11 tỉnh miền nam đã thiệt mạng do động đất, Cơ quan Ứng phó Thảm họa và Tình trạng khẩn cấp Thổ Nhĩ Kỳ (AFAD) cho biết hôm nay.",
        "2022-02-17",
        "lib/images/rc1.jpg"),
    NewsData(
        "Trung Quốc tức giận vì bị NATO xem là 'thách thức'",
        "Huyền Lê",
        "Trung Quốc bày tỏ quan ngại sâu sắc và cho rằng NATO \"phỉ báng\" chính sách đối ngoại của nước này khi xem Bắc Kinh là thách thức. Chúng tôi đã nhiều lần chỉ ra rằng trong cái gọi là khái niệm chiến lược mới, NATO đã phớt là sự thật và quyết xem Trung Quốc là thách thức mang tính hệ thống, người phát ngôn Bộ Ngoại giao Trung Quốc Uông Văn Bân nói tại cuộc họp báo ở Bắc Kinh hôm nay.",
        "2022-02-17",
        "lib/images/rc2.jpg"),
    NewsData(
        "Đạo diễn Peyton Reed: ‘Người Kiến 3 bớt hài, tăng chiều sâu tâm lý’",
        "Nguyên Minh",
        "Trả lời VnExpress, đạo diễn Peyton Reed cho biết tập cuối của bộ ba phim \"Người Kiến\" sẽ nghiêm túc hơn hai tập trước, bởi nhân vật phản diện lần này nguy hiểm.Ant-Man and the Wasp: Quantumania (tên tiếng Việt: Người Kiến và Chiến binh Ong: Thế giới lượng tử) là bom tấn đầu tiên của năm, đánh dấu tập phim thứ 31 và mở ra Giai đoạn 5 của Vũ trụ Điện ảnh Marvel. Đạo diễn Peyton Reed trò chuyện với VnExpress nhân dịp phim ra rạp.",
        "2022-02-16",
        "lib/images/rc3.jpg"),
    NewsData(
        "Song Joong Ki xuất hiện cùng vợ",
        "Như Anh",
        "Theo Osen, ngày 16/2, đôi vợ chồng tới sân bay quốc tế Incheon để sang Hungrari. Nam diễn viên có lịch trình quay phim My Name is Loh Kiwan ở đây. Lần đầu cặp uyên ương công khai sánh đôi, kể từ khi thông báo kết hôn hồi cuối tháng 1.",
        "2022-02-16",
        "lib/images/rc4.jpg"),
  ];

  static List<NewsData> bookMarkData = [
    NewsData(
        "Công an Cần Thơ khởi tố vụ án liên quan Việt Á",
        "An Bình",
        "Ngày 18/2, nguồn tin của VnExpress cho biết, các chứng cứ, hồ sơ, tài liệu, kết quả giám định... từ những đơn vị, bộ nghành, địa phương cung cấp đã cho thấy dấu hiệu tội phạm khi thực hiện các gói thầu trên. Do đó, Công an TP Cần Thơ đã phục hồi điều tra và khởi tố vụ án Vi phạm quy định về đấu thầu gây hậu quả nghiêm trọng theo Điều 222 Bộ luật Hình sự.",
        "2022-02-18",
        "lib/images/bm1.jpg"),
    NewsData(
        "Khởi tố vụ án sai phạm tại Sở Giáo dục và Đào tạo Hà Tĩnh",
        "Đức Hùng",
        "Tối 15/2, Công an tỉnh Hà Tĩnh cho biết đã khởi tố vụ án Vi phạm quy định đấu thầu gây hậu quả nghiêm trọng liên quan đến những sai phạm trong công tác mua sắm thiết bị giáo dục xảy ra tại Sở Giáo dục và Đào tạo.",
        "2022-02-16",
        "lib/images/bm2.jpg"),
  ];
}
