help(boxplot)
Các tham số:
 + formula: là một công thức, chẳng hạn như y ~ grp, trong đó y là một vectơ số
của các giá trị dữ liệu được chia thành các nhóm theo biến nhóm 
grp (thường là một nhân tố). Lưu ý rằng ~ g1 + g2 tương đương với g1: g2. 
 + data:là 1 dataframe( hoặc list) mà từ đó các biến trong formula sẽ lấy. 
 + subset: là một vectơ tùy chọn chỉ định một tập hợp con các quan sát 
được sử dụng để vẽ biểu đồ. 
 + na.action:một hàm cho biết điều gì sẽ xảy ra khi dữ liệu chứa NA.
Mặc định là bỏ qua các giá trị bị thiếu trong phản hồi hoặc nhóm. 
 + xlab, ylab: là tên cột x và y. từ bản R3.6.0 mặc định là không trống.
Có thể bị triệt tiêu bởi ann = FALSE.
 + ann : hàm logic cho biết các trục có chú thích hay không.
 + drop:lôgic chỉ ra nếu các mức không xảy ra nên bị loại bỏ 
(nếu f trong câu lệnh split là một factor hoặc một list). 
 + sep:chuỗi ký tự, được chuyển cho tương tác trong trường hợp f( trong câu lệnh split) là một list. 
 + lex.order:lôgic cho biết nếu thứ tự của nối nhân tố nên được sắp xếp theo từ vựng. 
(nếu f trong câu lệnh split là một factor hoặc một list). 
 + x:để xác định dữ liệu mà từ đó các boxplot sẽ được tạo ra.
một numeric vector hoặc 1 single list chứa các vector như vậy.
các đối số không được đặt tên bổ sung chỉ định thêm dữ liệu dưới dạng vectơ riêng biệt.
(mỗi vectơ tương ứng với một boxplot thành phần).NA được phép trong dữ liệu. 
 + ...	: đối với các formula. các đối số được đặt tên sẽ được chuyển cho phương thức mặc định.
Đối với phương thức mặc định, các đối số không được đặt tên là các vectơ dữ liệu bổ sung 
(trừ khi x là một danh sách khi chúng bị bỏ qua)
và các đối số được đặt tên là các đối số và tham số đồ họa được chuyển đến 
bxp ngoài các đối số được cung cấp bởi các thanh đối số (và ghi đè chúng trong bộ phân tích cú pháp ). 
Lưu ý rằng bxp có thể sử dụng hoặc không sử dụng các tham số đồ họa
mà nó được truyền vào.
 + range:điều này xác định độ dài của plot whiskers ra khỏi Box.
nếu range là positive, whiskers mở rộng đến điểm dữ liệu khắc nghiệt nhất 
khi không nhiều hơn range times phạm vi giữa các box.Giá trị bằng 0 
làm cho whiskers kéo dài đến các cực dữ liệu. 
 + width:một vectơ cho độ rộng tương đối của các box tạo nên plot.
 + varwidth : nếu varwidt là TRUE, các box được vẽ với chiều rộng tỉ lệ với 
căn bậc hai của số lượng quan sát được trong các nhóm. 
 + notch :nếu notch là TRUE.một khía được vẽ ở mỗi bên của các hộp. 
Nếu các khía của hai ô không trùng nhau thì đây là "bằng chứng mạnh mẽ" 
cho thấy hai trung tuyến khác nhau .
 + outline: nếu outline not TRUE các giá trị ngoại lai không được vẽ 
(như các điểm trong khi S + sử dụng các đường). 
 + names: nhóm nhãn sẽ được in dưới mỗi ô .Có thể là một vectơ ký tự hoặc một biểu thức
 + boxwex: một hệ số tỷ lệ được áp dụng cho tất cả các box.
Khi chỉ có một vài nhóm, sự xuất hiện của cốt truyện có thể được cải thiện 
bằng cách làm cho các box hẹp hơn. 
 + staplewex: mở rộng chiều rộng dòng ghim, tỷ lệ với chiều rộng box. 
 + outwex: mở rộng chiều rộng dòng outlier, tỷ lệ với chiều rộng box. 
 + plot : nếu TRUE,sau đó boxplot được sản xuất. 
Nếu không, các bản tóm tắt dựa trên các ô hộp sẽ được trả về. 
 + border:một vectơ màu tùy chọn cho các đường viền của boxplots. 
Các giá trị trong border được tái chế nếu độ dài của border nhỏ hơn số plot. 
 + col:nếu col không phải là null, 
nó được giả định là chứa các màu được sử dụng để tô màu cho phần thân của các ô hộp. 
Theo mặc định, chúng có màu nền. 
 + log: ký tự cho biết nếu x hoặc y hoặc cả hai tọa độ nên được vẽ trong thang log. 
 + pars:list (có thể là nhiều) tham số đồ họa hơn, 
ví dụ: boxwex hoặc outpch; chúng được chuyển đến bxp (nếu plot là TRUE)
 + horizontal : lôgic chỉ ra nếu các ô hộp có nằm ngang hay không;
mặc định FALSE có nghĩa là các hộp dọc. 
 + add :hợp lý, nếu TRUE, add boxplot vào plot hiện tại. 
 + at:vectơ số cung cấp vị trí nơi các ô hộp sẽ được vẽ, đặc biệt khi thêm = TRUE; 
mặc định là 1: n với n là số box.


