<?php

function execPostRequest($url, $data)
{
    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
    curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_HTTPHEADER, array(
            'Content-Type: application/json',
            'Content-Length: ' . strlen($data))
    );
    curl_setopt($ch, CURLOPT_TIMEOUT, 5);
    curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
    //execute post
    $result = curl_exec($ch);
    //close connection
    curl_close($ch);
    return $result;
}

class Payment extends Controller{
	function Checkout(){
		$GetModel= $this->model("tbl_fee");
		$GetFee = $GetModel ->GetFee();
		$this->view("master",["Page"=>"payment","PageName"=>"Payment","GetFee"=>$GetFee]);
	}
	function Info(){
		$name = $_POST["name"];
		$phone = $_POST["phone"];
		$address = $_POST["address"];
		$note = $_POST["note"];
		$method = $_POST["method"];
		$infocart = $_POST["infocart"];
		$total = $_POST["total"];
		$GetModel= $this->model("tbl_payment");
		$postId =  $_POST["postIds"];
		$quantity_order =  $_POST["order-quantity"];

		$InsertToDb = $GetModel->WriteInfo($name, $phone, $address,$note,$method,$infocart,$total,$postId, $quantity_order);
		if($InsertToDb != true) header( "Location: ../OutofStock" );
		else if($method == 1) {
			$endpoint = "https://test-payment.momo.vn/gw_payment/transactionProcessor";


			$partnerCode = "MOMOAD8820210602";
			$accessKey = "z442kd73DE3uP9Kp";
			$secretKey = "A0oh3FXxmOJTkRNMFChD74eqQJw22L5g";
			$orderInfo = "Thanh toán qua MoMo";
			$amount = $total;
			$orderId = time() ."";
			$returnUrl = "http://localhost/shoppet/success";
			$notifyurl = "http://localhost:8000/paymomo/ipn_momo.php";
			// Lưu ý: link notifyUrl không phải là dạng localhost
			$extraData = "merchantName=MoMo Partner";

			$requestId = time() . "";
			$requestType = "captureMoMoWallet";
			//before sign HMAC SHA256 signature
			$rawHash = "partnerCode=" . $partnerCode . "&accessKey=" . $accessKey . "&requestId=" . $requestId . "&amount=" . $amount . "&orderId=" . $orderId . "&orderInfo=" . $orderInfo . "&returnUrl=" . $returnUrl . "&notifyUrl=" . $notifyurl . "&extraData=" . $extraData;
			$signature = hash_hmac("sha256", $rawHash, $secretKey);
			$data = array('partnerCode' => $partnerCode,
				'accessKey' => $accessKey,
				'requestId' => $requestId,
				'amount' => $amount,
				'orderId' => $orderId,
				'orderInfo' => $orderInfo,
				'returnUrl' => $returnUrl,
				'notifyUrl' => $notifyurl,
				'extraData' => $extraData,
				'requestType' => $requestType,
				'signature' => $signature);
			$result = execPostRequest($endpoint, json_encode($data));
			$jsonResult = json_decode($result, true);  // decode json

			//Just a example, please check more in there
			echo $total;
			echo $jsonResult['status'];
			header('Location: ' . $jsonResult['payUrl']);
		} 
		else if($method == 2) header( "Location: ../Home" );
		else header( "Location: ../home" );
	}

	function Success(){
		$this->view("master",["Page"=>"paymentSuccess","PageName"=>"Payment success"]);
	}
}
?>