<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.Connection"%>
<%@page import="mybeanDB.ConnectionPool"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="Random_Number_Package.RandomNumber"%>

<!DOCTYPE html>
<html>
<head>
<title>订单处理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="format-detection" content="telephone=no" />
<meta name="" />

<link rel="stylesheet" href="tasp.css" />
<link href="orderconfirm.css" rel="stylesheet" />

<style>
#page {
	width: auto;
}

#comm-header-inner, #content {
	width: 950px;
	margin: auto;
}

#logo {
	padding-top: 26px;
	padding-bottom: 12px;
}

#header .wrap-box {
	margin-top: -67px;
}

#logo .logo {
	position: relative;
	overflow: hidden;
	display: inline-block;
	width: 140px;
	height: 35px;
	font-size: 35px;
	line-height: 35px;
	color: #f40;
}

#logo .logo .i {
	position: absolute;
	width: 140px;
	height: 35px;
	top: 0;
	left: 0;
	background: url(http://a.tbcdn.cn/tbsp/img/header/logo.png);
}
</style>

</head>
<body data-spm="1">

	<script type="text/javascript">
		function myFunction() {

			return sessionStorage.getItem('zonge');
		}
	</script>
	<div id="page">

		<div id="content" class="grid-c">

			<div id="address" class="address" style="margin-top: 20px;"
				data-spm="2">
				<form name="addrForm" action="#">
					<h3>确认收货地址</h3>
					<ul id="address-list" class="address-list">
						<li class="J_Addr J_MakePoint clearfix  J_DefaultAddr "
							data-point-url="http://log.mmstat.com/buy.1.20"><s
							class="J_Marker marker"></s> <span class="marker-tip">寄送至</span>
							<div class="address-info">
								<a href="#" class="J_Modify modify J_MakePoint"
									data-point-url="http://log.mmstat.com/buy.1.21">修改本地址</a> <a
									class="J_DefaultHandle set-default J_MakePoint"
									href="/auction/update_address_selected_status.htm?addrid=674944241"
									style="display: none"
									data-point-url="http://log.mmstat.com/buy.1.18">设置为默认收货地址</a>
							</div></li>
						<li class="J_Addr J_MakePoint clearfix"
							data-point-url="http://log.mmstat.com/buy.1.20"><s
							class="J_Marker marker"></s> <span class="marker-tip">寄送至</span>
							<div class="address-info">
								<a href="#" class="J_Modify modify J_MakePoint"
									data-point-url="#">修改本地址</a>
								<%
									Connection conn = ConnectionPool.getInstance().getConnection();
									Statement stm1 = conn.createStatement();
									Statement stm2 = conn.createStatement();
									Statement stm3 = conn.createStatement();
									ResultSet rs1userinfolist = stm1.executeQuery("select * from userinfolist");
									ResultSet rs2orderphone = stm2.executeQuery("select * from orderphone");
									ResultSet rs3addresslist = stm3.executeQuery("select * from addresslist");
									String userId = (String) session.getAttribute("userId");
									//System.out.println(userId);
									String address = "无";
									String phone = "无";
									String addressId = "无";
									int flag1 = 0, flag2 = 0, i = 0;
									while (rs1userinfolist.next()) {
										if (rs1userinfolist.getString("userId").equals(userId)) {
											while (rs2orderphone.next()) {
												if (rs2orderphone.getString("userId").equals(userId)) {
													phone = rs2orderphone.getString("phone");
													flag1 = 1;
													break;
												}
											}

											while (rs3addresslist.next()) {
												if (rs1userinfolist.getString("addressId").equals(rs3addresslist.getString("addressId"))) {
													address = rs3addresslist.getString("address");
													
													session.setAttribute("addressId", null);
													session.setAttribute("addressId", (String) rs3addresslist.getString("addressId"));

													flag2 = 1;
													break;
												}
											}

											ConnectionPool.getInstance().release(conn);

										}
										if (flag1 == 1 && flag2 == 1) {
											ConnectionPool.getInstance().release(conn);
											break;
										}

									}
									stm1.close();
									stm2.close();
									stm3.close();
									ConnectionPool.getInstance().release(conn);
									
									
								%>
								<label>送餐地址：<%=address%></label><br> <label>手机号：<%=phone%></label>
								<div class="address-bar">
									<a href="../shanghu/member_addr.jsp">修改</a>
								</div>

							</div></li>
					</ul>


					</ul>


				</form>
			</div>
			<form id="J_Form" name="J_Form" action="dingdanchuli.jsp"
				method="post">
				<input name='_tb_token_' type='hidden' value='IZpONoL2bm'> <input
					type="hidden" name="action" value="order/confirmOrderAction" /> <input
					type="hidden" name="event_submit_do_confirm" value="1" /> <input
					type="hidden" id="J_InsuranceDatas" name="insurance_datas" value="" />
				<input type="hidden" id="J_InsuranceParamCheck"
					name="insurance_param_check" value="" /> <input type="hidden"
					name="" id="J_checkCodeUrl" value="/auction/order/check_code.htm" />
				<input type="hidden" name="need_not_split_sellers" value="" /> <input
					type="hidden" name="from" value="cart" /> <input type="hidden"
					name="cnData" value="" /> <input type="hidden" name="shop_id"
					value="0" class="J_FareParam" /> <input type="hidden"
					name="cartShareTag" value="" /> <input type="hidden"
					name="flushingPictureServiceId" value="" /> <input type="hidden"
					id="J_channelUrl" name="channel" value="no-detail"
					class="J_FareParam" /> <input type="hidden" name="cinema_id"
					value="" /> <input type="hidden" id="item" name="item"
					value="35612993875_19614514619_1_31175333266_1704508670_0_0_0_cartCreateTime~1380269540000" />
				<input type="hidden" id="cartId" name="cartId" value="35612993875" />
				<input type="hidden" id="verticalParams" name="verticalParams"
					value="" /> <input type="hidden" name="cross_shop_ids" value="" />
				<input type="hidden" name="tmall_cross_shop_ids" value="NULL" /> <input
					type="hidden" name="buyer_from" value="cart" class="J_FareParam" />
				<input type="hidden" name="tbsc_channel_id" value="0" /> <input
					type="hidden" name="checkCodeIds"
					value="35612993875_19614514619_1_31175333266_1704508670_0_0_0_cartCreateTime~1380269540000" />
				<input type="hidden" id="J_OrderInfoString" name="orderInfoString"
					value="1704508670:2:19614514619:31175333266:" /> <input
					type="hidden" id="J_OrderInfoStringForCod"
					name="orderInfoStringForCod"
					value="1704508670_2,19614514619:31175333266:35612993875" /> <input
					type="hidden" name="encryptString"
					value="0A04F3D8F7EEDC813AFF8711BE47B9E5E96F6E86A391A4C2" /> <input
					type="hidden" name="secondDivisionCode" value="422801" /> <input
					type="hidden" name="use_cod" value="false" class="J_FareParam" />
				<input type="hidden" name="1704508670:2|seq" value="b_47285539868" />
				<input type="hidden" name="n_area" value="422801" /> <input
					type="hidden" name="n_city" value="422800" /> <input type="hidden"
					name="n_prov" value="420000" /> <input type="hidden"
					name="n_state" value="0" /> <input type="hidden" name="n_country"
					value="1" /> <input type="hidden" id="defaultId" name="defaultId"
					value="674944241" /> <input type="hidden" name="postCode"
					value="445000" /> <input type="hidden" name="deliverAddr"
					value="湖北民族学院（信息工程学院）  男生宿舍楼5栋102" /> <input type="hidden"
					name="addressId" value="674944241" /> <input type="hidden"
					name="deliverMobile" value="18727717260" /> <input type="hidden"
					name="deliverName" value="朱万雄" /> <input type="hidden"
					name="deliverPhone" value="" /> <input type="hidden"
					id="divisionCode" name="divisionCode" value="422801" /> <input
					type="hidden" id="J_CodAction" name="CodAction"
					value="http://delivery.taobao.com/cod/cod_payway.htm" /> <input
					type="hidden" id="event_submit_do_cod_switcher"
					name="event_submit_do_cod_switcher" value="1" /> <input
					type="hidden" id="J_CodActionNew" name="CodActionNew"
					value="cod/codOrder_switcher_action" /> <input type="hidden"
					name="guest_buyer" value="false" /> <input type="hidden"
					id="J_sid" name="sid" value="32457704949" /> <input type="hidden"
					id="J_gmtCreate" name="gmtCreate" value="1380270550897" /> <input
					type="hidden" name="secStrNoCCode"
					value="6dd2fa5d614e2ced1d3189b0c2da09c0" /> <input type="hidden"
					id="J_TransferWarehouseId" name="overseasWarehouseId" value="" />
				<input type="hidden" id="J_TransferWarehouseDivisionId"
					name="overseasWarehouseDivisionId" value="" /> <input
					type="hidden" id="paramString"
					value="tuan_type=0&use_cod=false&shop_id=0&item=35612993875_19614514619_1_31175333266_1704508670_0_0_0_cartCreateTime~1380269540000&buyer_from=cart&isRepost=true&" />
				<input type="hidden" id="J_StepPayData" value='""' /> <input
					type="hidden" name="unity" value="1" /> <input type="hidden"
					name="buytraceid" value="" /> <input type="hidden" name="activity"
					value="" /> <input type="hidden" name="bankfrom" value="" /> <input
					type="hidden" name="yfx315" value="" /> <input type="hidden"
					id="J_channelUrl" name="channel" value="no-detail"
					class="J_FareParam" /> <input type="hidden" id="J_actId"
					name="actId" value="" /> <input type="hidden" name="etkv" value="" />
				<input type="hidden" name="havePremium" value="false" /> <input
					type="hidden" name="cartShareTag" value="" /> <input type="hidden"
					name="flushingPictureServiceId" value="" />
				<div>
					<h3 class="dib">确认订单信息</h3>
					<table cellspacing="0" cellpadding="0" class="order-table"
						id="J_OrderTable" summary="统一下单订单信息区域">
						<caption style="display: none">统一下单订单信息区域</caption>
						<thead>
							<tr>
								<th class="s-title">菜品
									<hr />
								</th>
								<th class="s-price">单价(元)
									<hr />
								</th>
								<th class="s-amount">数量
									<hr />
								</th>

								<th class="s-total">小计(元)
									<hr />
								</th>
							</tr>
						</thead>



						<tbody data-spm="3" class="J_Shop" data-tbcbid="0"
							data-outorderid="47285539868" data-isb2c="false"
							data-postMode="2" data-sellerid="1704508670">
							<tr class="first">
								<td colspan="5"></td>
							</tr>
							<tr class="shop blue-line">

								<td colspan="2" class="promo">
									<div>
										<ul class="scrolling-promo-hint J_ScrollingPromoHint">
										</ul>
									</div>
								</td>
							</tr>




							<%
								String shuliang = "无";

								String manjianjiage = "无";
								String dianpuyouhui = "0";
								float zonge = 0;

								Vector<String> caipingName = new Vector<String>();
								Vector<String> jiage = new Vector<String>();

								String jiage1 = "无";
								String caipingName1 = "无 ";
								String shangjiaName = (String) session.getAttribute("Name");
								String shangJiaID = (String) session.getAttribute("ID");
								session.setAttribute("phone", null);
								session.setAttribute("phone", phone);
								Statement stmshangjialist = conn.createStatement();
								
								Statement stmyouhui = conn.createStatement();
								Statement stmyouhuia = conn.createStatement();
								Statement stmcaidanlist = conn.createStatement();

								ResultSet rsshangjialist = stmshangjialist.executeQuery("select * from shangjialist");
								ResultSet rsyouhuia = stmyouhuia.executeQuery("select * from youhui");
								ResultSet rsyouhui = stmyouhui.executeQuery("select * from youhui");
								ResultSet rscaidanlist = stmcaidanlist.executeQuery("select * from caidanlist");

								Vector<Vector<String>> fuheyouhui = new Vector<Vector<String>>();
								Date dangqianshijian = new Date(System.currentTimeMillis());
								DateFormat df = new SimpleDateFormat("yyyyMMdd");

								while (rsyouhuia.next()) {

									if (((String) rsyouhuia.getString("shangJiaID")).equals(shangJiaID)) {
										String a = (String) rsyouhuia.getString("kaiShiShiJian");
										Date kaiShiShiJian = df.parse(a);
										String b = (String) rsyouhuia.getString("jieShuShiJian");
										Date jieShuShiJian = df.parse(b);
										Vector<String> record = new Vector<String>();

										if (dangqianshijian.compareTo(kaiShiShiJian) > 0) {
											if (dangqianshijian.compareTo(jieShuShiJian) < 0) {
												if ((Float.parseFloat((String) rsyouhuia.getString("manJianJiaGe"))) >= zonge) {

													record.add(rsyouhuia.getString("shangJiaID"));
													record.add(rsyouhuia.getString("manJianJiaGe"));
													record.add(rsyouhuia.getString("youHuiJiaGe"));
													record.add(rsyouhuia.getString("kaiShiShiJian"));
													record.add(rsyouhuia.getString("jieShuShiJian"));
													fuheyouhui.add(record);

												}
											}
										}

									}
								}
								
							
								
								int jj = 0;
								int jj3 = 0;
								int jj1 = 0;
								while ((String) session.getAttribute("a" + String.valueOf(jj)) != null) {
									shuliang = (String) request.getParameter("input" + jj);
									if(shuliang==null){jj++;jj1++;continue;}
									if(shuliang==""){jj++;jj1++;continue;}
									if (Integer.parseInt(shuliang) == 0) {
										jj1++;
										jj++;
										continue;
									
									}		
								jj++;
								}
								jj -= jj1;
								float manJianJiaGe = 0;
								float youHuiJiaGe = 0;
								int flag = 0;

								int j = 0;
								int h = 0;
								int k = 0;
								while ((String) session.getAttribute("a" + String.valueOf(j)) != null) {
									shuliang = (String) request.getParameter("input" + j);
									
                                	 if(shuliang==null){j++;continue;}
                                	 if(shuliang==""){j++;continue;}
 									if (Integer.parseInt(shuliang) == 0) {

 										j++;
 										continue;
 									}
                                	 
                              

									caipingName.add((String) session.getAttribute("a" + String.valueOf(j)));

									jiage.add((String) session.getAttribute(String.valueOf(j)));

									jiage1 = (String) session.getAttribute(String.valueOf(j));
									caipingName1 = (String) session.getAttribute("a" + String.valueOf(j));

									session.setAttribute("caipingName" + String.valueOf(h++), caipingName1);
									session.setAttribute("shuliang" + String.valueOf(k++), shuliang);

									String xiaoji = String.valueOf(Float.parseFloat(jiage1) * Float.parseFloat(shuliang));
									zonge += Float.parseFloat(xiaoji);
							%>
							<tr class="item"
								data-lineid="19614514619:31175333266:35612993875"
								data-pointRate="0">
								<td class="s-title"><img
									src="http://img03.taobaocdn.com/bao/uploaded/i3/18670026332876589/T1A4icFbNeXXXXXXXX_!!0-item_pic.jpg_60x60.jpg"
									class="itempic"><span class="title J_MakePoint"
									data-point-url="http://log.mmstat.com/buy.1.5"><%=caipingName1%></span></a>

									<div class="props"></div> </a></td>
								<td class="s-price"><span class='price '> <em
										class="style-normal-small-black J_ItemPrice"><%=jiage1%></em>
								</span> <input type="hidden" name="costprice" value="630.00"
									class="J_CostPrice" /></td>
								<td class="s-amount" data-point-url=""><input type="hidden"
									class="J_Quantity" value="1"
									name="19614514619_31175333266_35612993875_quantity" /><%=shuliang%>

								</td>

								<td class="s-total"><span class='price '> <ems
											class="style-normal-bold-red J_ItemTotal "><%=xiaoji%></em></span>
									<input id="furniture_service_list_b_47285539868" type="hidden"
									name="furniture_service_list_b_47285539868" /></td>
							</tr>
							<%
								j++;
								}

								if (jj > 1) {

									int cc = 0;

									while (rsyouhui.next()) {

										if (shangJiaID.equals(rsyouhui.getString("shangJiaID"))) {

											for (int ii = 0; ii < fuheyouhui.size(); ii++) {

												if (ii != fuheyouhui.size() - 1) {
													if (zonge >= Float.parseFloat(fuheyouhui.elementAt(i).elementAt(1))) {

														if (zonge <= Float.parseFloat(fuheyouhui.elementAt(i + 1).elementAt(1))) {

															manJianJiaGe = Float.parseFloat(fuheyouhui.elementAt(i ).elementAt(1));
															youHuiJiaGe = Float.parseFloat(fuheyouhui.elementAt(i ).elementAt(2));
															cc = 1;
															break;
														}
													}
												} else {

													if (zonge >= Float.parseFloat(fuheyouhui.elementAt(i).elementAt(1))) {

														manJianJiaGe = Float.parseFloat((fuheyouhui.elementAt(i)).elementAt(1));
														youHuiJiaGe = Float.parseFloat((fuheyouhui.elementAt(i )).elementAt(2));
														cc = 1;
														break;

													}

												}
											}
											if (cc == 1) {
												break;
											}

										}

									}

								} else {

									int jjj = 0;

									Connection conn2 = ConnectionPool.getInstance().getConnection();
									Statement stm12 = conn.createStatement();
									Statement stm122 = conn.createStatement();
									Statement stm22 = conn.createStatement();

									ResultSet rscaidanlist2 = stm12.executeQuery("select * from caidanlist");
									ResultSet rscaidanlist22 = stm12.executeQuery("select * from caidanlist");
									ResultSet rscaipinglist2 = stm12.executeQuery("select * from caipinglist");
									int q = 0;
									flag = 1;
									while ((String) session.getAttribute("a" + String.valueOf(jjj)) != null) {
										shuliang = (String) request.getParameter("input" + jjj);

										if (Integer.parseInt(shuliang) == 0) {

											jjj++;
											continue;
										}
										String a = "m";
										while (rscaipinglist2.next()) {

											String b = (String) rscaipinglist2.getString("caipingName");
											if (b.equals((String) session.getAttribute("a" + String.valueOf(jjj)))) {

												a = (String) rscaipinglist2.getString("caipingID");
												break;
											}
										}

										caipingName1 = (String) session.getAttribute("a" + String.valueOf(jjj));
										rscaidanlist22 = stm122.executeQuery("select * from caidanlist");

										while (rscaidanlist22.next()) {
											if (((String) rscaidanlist22.getString("caipingID")).equals(a)) {

												float youhuijiage2 = Float.parseFloat(rscaidanlist22.getString("youhujiage"));

												if (youhuijiage2 != 0) {

													youHuiJiaGe = youhuijiage2;
													manJianJiaGe = Float.parseFloat(rscaidanlist22.getString("jiage"));

												} else {
													int ccc = 0;
													Statement stmyouhui2 = conn.createStatement();
													ResultSet rsyouhui2 = stmyouhui2.executeQuery("select * from youhui");
													while (rsyouhui2.next()) {
														if (shangJiaID.equals(rsyouhui2.getString("shangJiaID"))) {

															for (int ii = 0; ii < fuheyouhui.size(); ii++) {

																if (ii != fuheyouhui.size() - 1) {
																	if (zonge >= Float.parseFloat(fuheyouhui.elementAt(i).elementAt(1))) {

																		if (zonge <= Float
																				.parseFloat(fuheyouhui.elementAt(i + 1).elementAt(1))) {

																			manJianJiaGe = Float
																					.parseFloat(fuheyouhui.elementAt(i ).elementAt(1));
																			youHuiJiaGe = Float
																					.parseFloat(fuheyouhui.elementAt(i ).elementAt(2));
																			ccc = 1;
																			break;

																		}
																	}
																} else {

																	if (zonge >= Float.parseFloat(fuheyouhui.elementAt(i).elementAt(1))) {

																		manJianJiaGe = Float
																				.parseFloat(fuheyouhui.elementAt(i ).elementAt(1));
																		youHuiJiaGe = Float
																				.parseFloat(fuheyouhui.elementAt(i).elementAt(2));
																		ccc = 1;
																		break;
																	}

																}
															}
															jj3 = 1;
															if (ccc == 1) {
																break;
															}

														}
														
													}

												}

											}
										}

										if (flag == 1) {
											break;
										}
									}

								}

								if (jj > 1 || jj3 == 1) {

									if (zonge >= manJianJiaGe) {
										zonge -= youHuiJiaGe;
										session.setAttribute("zonge", String.valueOf(zonge));
										dianpuyouhui = String.valueOf(youHuiJiaGe);
									} else {

										session.setAttribute("zonge", String.valueOf(zonge));
									}
								} else {

									zonge -= youHuiJiaGe;
									session.setAttribute("zonge", String.valueOf(zonge));
									dianpuyouhui = String.valueOf(youHuiJiaGe);
								}
							%>





							<tr class="item-service">
								<td colspan="5" class="servicearea" style="display: none"></td>
							</tr>

							<tr class="blue-line" style="height: 2px;">
								<td colspan="5"></td>
							</tr>
							<tr class="other other-line">
								<td colspan="5">
									<ul class="dib-wrap">
										<li class="dib user-info">
											<ul class="wrap">
												<li>
													<div class="field gbook">
														<label class="label">给卖家留言：</label>
														<textarea style="width: 350px; height: 80px;"
															title="选填：对本次交易的补充说明（建议填写已经和卖家达成一致的说明）" name="liuyan"></textarea>
													</div>
												</li>
											</ul>
										</li>
										<li class="dib extra-info">

											<div class="shoparea">
												<ul class="dib-wrap">
													<li class="dib title">满<%=manJianJiaGe%>减<%=youHuiJiaGe%>：
													</li>
													<li class="dib sel"><div
															class="J_ShopPromo J_Promotion promotion clearfix"
															data-point-url="http://log.mmstat.com/buy.1.16"></div></li>
													<li class="dib fee"><span class='price '> -<em
															class="style-normal-bold-black J_ShopPromo_Result"><%=dianpuyouhui%></em>
													</span></li>
												</ul>
											</div>

											<div class="shoppointarea"></div>

											<div class="farearea">
												<ul class="dib-wrap J_farearea">

													<li class="dib sel"
														data-point-url="http://log.mmstat.com/jsclick?cache=*&tyxd=wlysfs">
														<input type="hidden" name="1704508670:2|actualPaidFee"
														value="0" class="J_ActualPaidFee" /> <input type="hidden"
														name="1704508670:2|codAllowMultiple" value="true" /> <input
														type="hidden" name="1704508670:2|codSellerFareFee"
														value="" class="J_CodSellerFareFee" /> <input
														type="hidden" name="1704508670:2|codServiceFeeRate"
														value="" class="J_CodServiceFeeRate" /> <input
														type="hidden" name="1704508670:2|codPostFee" value="0"
														class="J_CodPostFee" />
											</div>
											<div class="extra-area"></div>
											<div class="servicearea" style="display: none"></div>
										</li>
									</ul>
								</td>
							</tr>
							<tr class="shop-total blue-line">
								<td colspan="5">店铺合计： <span class='price g_price '>
										<span>&yen;</span> <%=zonge%>

								</span> <input type="hidden" name="1704508670:2|creditcard"
									value="false" /> <input type="hidden" id="J_IsLadderGroup"
									name="isLadderGroup" value="false" />

								</td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="5">

									<div class="order-go" data-spm="4">
										<div class="J_AddressConfirm address-confirm">
											<div class="kd-popup pop-back" style="margin-bottom: 40px;">
												<div class="box">
													<div class="bd">
														<div class="point-in">


															<button type="submit">付款</button>
														</div>

													</div>

													<div class="J_confirmError confirm-error"></div>


													<div class="msg" style="clear: both;"></div>
												</div>
								</td>
							</tr>
						</tfoot>
					</table>
				</div>

				<input type="hidden" id="J_useSelfCarry" name="useSelfCarry"
					value="false" /> <input type="hidden" id="J_selfCarryStationId"
					name="selfCarryStationId" value="0" /> <input type="hidden"
					id="J_useMDZT" name="useMDZT" value="false" /> <input
					type="hidden" name="useNewSplit" value="true" /> <input
					type="hidden" id="J_sellerIds" name="allSellIds" value="1704508670" />
			</form>
		</div>

		<div id="footer"></div>
	</div>
	<div style="text-align: center;"></div>

</body>
</html>
