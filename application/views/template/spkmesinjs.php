<script type="text/javascript">
$(document).ready(function(){
				$('#field-ukuran_kertas').hide();
				$('#ukuran_kertas_display_as_box').hide();
				$('#field-nama_kertas').hide();
				$('#nama_kertas_display_as_box').hide();
				$('#field-warna').hide();
				$('#warna_display_as_box').hide();
				$('#field-ukuran_kertas_plano').hide();
				$('#ukuran_kertas_plano_display_as_box').hide();
				$('#ukuran_kertas_potong_display_as_box').hide();
				$('#field-ukuran_kertas_potong').hide();
				$('#varnish_type_display_as_box').hide();
				$('#field-varnish_type').hide();
				$('#lem_type_display_as_box').hide();
				$('#field-lem_type').hide();
				$('#proses_ke_mesin_input_box').hide();
				$('#proses_ke_mesin_display_as_box').hide();
				$('#field-proses_ke_mesin').hide();
				$('#field-jumlah').hide();
				$('#jumlah_display_as_box').hide();

				var qtyFinish = $('#field-qty_finish').text();
				var qtyOrder = $('#field-qty_order').text();
				var width = qtyFinish*100/qtyOrder;
				$('#progress_input_box .progress-bar').css("width",width+'%');
				$('#progress_input_box .progress-bar').text(width+'%');

				if ($('#field-proses_type').hasClass('readonly_label')) {
					console.log('here')
					$('#field-proses_type').addClass('form-control').attr("disabled", true);
				}

	$(document).on('change', '#field-po_id', function(){
		var desc_po = $("#field-po_id").val();
		$.ajax({
               type : "POST",
               url  : "<?php echo base_url(); ?>index.php/Purchase/descriptionPO",
               data : "po-id=" + desc_po,
               success: function(data){
                   $("#field-description").html(data);
               }
            });
	})
				
	$(document).on('change', '#field-proses_type', function(){
		var proses_type = $("#field-proses_type").val();
            $.ajax({
               type : "POST",
               url  : "<?php echo base_url(); ?>index.php/Purchase/mesin",
               data : "field-proses_type=" + proses_type,
               success: function(data){
                   $("#field-mesin_id").html(data);
               }
            });

            $.ajax({
            	type 	: "POST",
            	url 	: "<?php echo base_url(); ?>index.php/Purchase/operator_role",
            	data 	: "field-proses_type=" + proses_type,
            	success: function(data){
            		$("#field-operator_mesin").html(data);
            	}
            });
            if ($('#field-proses_type').val() == '2') {
				console.log(proses_type);
				$('#field-ukuran_kertas').hide();
				$('#ukuran_kertas_display_as_box').hide();
				$('#field-nama_kertas').hide();
				$('#nama_kertas_display_as_box').hide();
				$('#field-warna').hide();
				$('#warna_display_as_box').hide();
				$('#field-ukuran_kertas_plano').hide();
				$('#ukuran_kertas_plano_display_as_box').hide();
				$('#ukuran_kertas_potong_display_as_box').hide();
				$('#field-ukuran_kertas_potong').hide();
				$('#varnish_type_display_as_box').show();
				$('#field-varnish_type').show();
				$('#lem_type_display_as_box').hide();
				$('#field-lem_type').hide();
				$('#proses_ke_mesin_input_box').hide();
				$('#proses_ke_mesin_display_as_box').hide();
				$('#field-proses_ke_mesin').hide();
				$('#field-jumlah').hide();
				$('#jumlah_display_as_box').hide();
				
			} else if ($('#field-proses_type').val() == '1') {
				console.log(proses_type);
				$('#field-ukuran_kertas').show();
				$('#ukuran_kertas_display_as_box').show();
				$('#field-nama_kertas').show();
				$('#nama_kertas_display_as_box').show();
				$('#field-warna').show();
				$('#warna_display_as_box').show();
				$('#field-ukuran_kertas_plano').hide();
				$('#ukuran_kertas_plano_display_as_box').hide();
				$('#ukuran_kertas_potong_display_as_box').hide();
				$('#field-ukuran_kertas_potong').hide();
				$('#varnish_type_display_as_box').hide();
				$('#field-varnish_type').hide();
				$('#lem_type_display_as_box').hide();
				$('#field-lem_type').hide();
				$('#proses_ke_mesin_input_box').hide();
				$('#proses_ke_mesin_display_as_box').hide();
				$('#field-proses_ke_mesin').hide();
				
			} else if ($('#field-proses_type').val() == '8') {
				console.log(proses_type);
				$('#field-ukuran_kertas').hide();
				$('#ukuran_kertas_display_as_box').hide();
				$('#field-nama_kertas').hide();
				$('#nama_kertas_display_as_box').hide();
				$('#field-warna').hide();
				$('#warna_display_as_box').hide();
				$('#field-ukuran_kertas_plano').hide();
				$('#ukuran_kertas_plano_display_as_box').hide();
				$('#ukuran_kertas_potong_display_as_box').hide();
				$('#field-ukuran_kertas_potong').hide();
				$('#varnish_type_display_as_box').hide();
				$('#field-varnish_type').hide();
				$('#lem_type_display_as_box').hide();
				$('#field-lem_type').hide();
				$('#proses_ke_mesin_input_box').hide();
				$('#proses_ke_mesin_display_as_box').hide();
				$('#field-proses_ke_mesin').hide();
				$('#field-jumlah').hide();
				$('#jumlah_display_as_box').hide();
			
			} else if ($('#field-proses_type').val() == '5') {
				console.log(proses_type);
				$('#field-ukuran_kertas').hide();
				$('#ukuran_kertas_display_as_box').hide();
				$('#field-nama_kertas').show();
				$('#nama_kertas_display_as_box').show();
				$('#field-warna').hide();
				$('#warna_display_as_box').hide();
				$('#field-ukuran_kertas_plano').show();
				$('#ukuran_kertas_plano_display_as_box').show();
				$('#ukuran_kertas_potong_display_as_box').show();
				$('#field-ukuran_kertas_potong').show();
				$('#varnish_type_display_as_box').hide();
				$('#field-varnish_type').hide();
				$('#lem_type_display_as_box').hide();
				$('#field-lem_type').hide();
				$('#proses_ke_mesin_input_box').show();
				$('#proses_ke_mesin_display_as_box').show();
				//$('#field-proses_ke_mesin').show();
			
			} else if ($('#field-proses_type').val() == '6') {
				console.log(proses_type);
				$('#field-ukuran_kertas').hide();
				$('#ukuran_kertas_display_as_box').hide();
				$('#field-nama_kertas').hide();
				$('#nama_kertas_display_as_box').hide();
				$('#field-warna').hide();
				$('#warna_display_as_box').hide();
				$('#field-ukuran_kertas_plano').hide();
				$('#ukuran_kertas_plano_display_as_box').hide();
				$('#ukuran_kertas_potong_display_as_box').hide();
				$('#field-ukuran_kertas_potong').hide();
				$('#varnish_type_display_as_box').hide();
				$('#field-varnish_type').hide();
				$('#lem_type_display_as_box').show();
				$('#field-lem_type').show();
				$('#proses_ke_mesin_input_box').hide();
				$('#proses_ke_mesin_display_as_box').hide();
				$('#field-proses_ke_mesin').hide();
				$('#field-jumlah').hide();
				$('#jumlah_display_as_box').hide();
			
			}  else if ($('#field-proses_type').val() == '10') {
				console.log(proses_type);
				$('#field-ukuran_kertas').hide();
				$('#ukuran_kertas_display_as_box').hide();
				$('#field-nama_kertas').hide();
				$('#nama_kertas_display_as_box').hide();
				$('#field-warna').hide();
				$('#warna_display_as_box').hide();
				$('#field-ukuran_kertas_plano').hide();
				$('#ukuran_kertas_plano_display_as_box').hide();
				$('#ukuran_kertas_potong_display_as_box').hide();
				$('#field-ukuran_kertas_potong').hide();
				$('#varnish_type_display_as_box').hide();
				$('#field-varnish_type').hide();
				$('#lem_type_display_as_box').hide();
				$('#field-lem_type').hide();
				$('#proses_ke_mesin_input_box').hide();
				$('#proses_ke_mesin_display_as_box').hide();
				$('#field-proses_ke_mesin').hide();
				$('#field-jumlah').hide();
				$('#jumlah_display_as_box').hide();
			}  else if ($('#field-proses_type').val() == '4') {
				console.log(proses_type);
				$('#field-ukuran_kertas').hide();
				$('#ukuran_kertas_display_as_box').hide();
				$('#field-nama_kertas').hide();
				$('#nama_kertas_display_as_box').hide();
				$('#field-warna').hide();
				$('#warna_display_as_box').hide();
				$('#field-ukuran_kertas_plano').hide();
				$('#ukuran_kertas_plano_display_as_box').hide();
				$('#ukuran_kertas_potong_display_as_box').hide();
				$('#field-ukuran_kertas_potong').hide();
				$('#varnish_type_display_as_box').hide();
				$('#field-varnish_type').hide();
				$('#lem_type_display_as_box').hide();
				$('#field-lem_type').hide();
				$('#proses_ke_mesin_input_box').hide();
				$('#proses_ke_mesin_display_as_box').hide();
				$('#field-proses_ke_mesin').hide();
				$('#field-jumlah').hide();
				$('#jumlah_display_as_box').hide();
			
			} else if ($('#field-proses_type').val() == '9') {
				console.log(proses_type);
				$('#field-ukuran_kertas').hide();
				$('#ukuran_kertas_display_as_box').hide();
				$('#field-nama_kertas').hide();
				$('#nama_kertas_display_as_box').hide();
				$('#field-warna').hide();
				$('#warna_display_as_box').hide();
				$('#field-ukuran_kertas_plano').hide();
				$('#ukuran_kertas_plano_display_as_box').hide();
				$('#ukuran_kertas_potong_display_as_box').hide();
				$('#field-ukuran_kertas_potong').hide();
				$('#varnish_type_display_as_box').hide();
				$('#field-varnish_type').hide();
				$('#lem_type_display_as_box').hide();
				$('#field-lem_type').hide();
				$('#proses_ke_mesin_input_box').hide();
				$('#proses_ke_mesin_display_as_box').hide();
				$('#field-proses_ke_mesin').hide();
				$('#field-jumlah').hide();
				$('#jumlah_display_as_box').hide();
			}  else if ($('#field-proses_type').val() == '7') {
				console.log(proses_type);
				$('#field-ukuran_kertas').hide();
				$('#ukuran_kertas_display_as_box').hide();
				$('#field-nama_kertas').hide();
				$('#nama_kertas_display_as_box').hide();
				$('#field-warna').hide();
				$('#warna_display_as_box').hide();
				$('#field-ukuran_kertas_plano').hide();
				$('#ukuran_kertas_plano_display_as_box').hide();
				$('#ukuran_kertas_potong_display_as_box').hide();
				$('#field-ukuran_kertas_potong').hide();
				$('#varnish_type_display_as_box').hide();
				$('#field-varnish_type').hide();
				$('#lem_type_display_as_box').hide();
				$('#field-lem_type').hide();
				$('#proses_ke_mesin_input_box').hide();
				$('#proses_ke_mesin_display_as_box').hide();
				$('#field-proses_ke_mesin').hide();
			
			} 			
			});
        });
</script>

