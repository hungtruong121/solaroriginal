package egovframework.let.citizen.service.impl;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.text.MessageFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.mime.HttpMultipartMode;
import org.apache.http.entity.mime.MultipartEntityBuilder;
import org.apache.http.impl.client.HttpClients;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.let.citizen.service.MessageService;
import egovframework.let.utl.fcc.service.CitizenPhoneUtil;
import egovframework.let.validator.PhoneValidator;

@Service("messageService")
public class MessageServiceImpl implements MessageService {

	@Resource(name = "egovMessageSource")
	EgovMessageSource egovMessageSource;

	@Autowired
	@Qualifier("phoneValidator")
	private PhoneValidator phoneValidator;

	@Override
	public String sendSMS(String phoneTo, String code) {
		String phone = phoneTo.replace("-", "");
		String aligo_userId = egovMessageSource.getMessage("apis.aligo.user_id");
		String aligo_key = egovMessageSource.getMessage("apis.aligo.key");
		String aligo_message = egovMessageSource.getMessage("apis.aligo.msg");
		String aligo_title = egovMessageSource.getMessage("apis.aligo.title");
		String aligo_sender = egovMessageSource.getMessage("apis.aligo.sender");
		aligo_message = MessageFormat.format(aligo_message, code);

		try {
			final String encodingType = "utf-8";
			final String boundary = "____boundary____";

			/**************** 문자전송하기 예제 ******************/
			/* "result_code":결과코드,"message":결과문구, */
			/* "msg_id":메세지ID,"error_cnt":에러갯수,"success_cnt":성공갯수 */
			/*
			 * 동일내용 > 전송용 입니다. /******************** 인증정보
			 ********************/
			String sms_url = "https://apis.aligo.in/send/"; // 전송요청 URL

			Map<String, String> sms = new HashMap<String, String>();
			sms.put("user_id", aligo_userId); // SMS 아이디
			sms.put("key", aligo_key); // 인증키
			sms.put("sender", aligo_sender); // 발신번호
			/******************** 인증정보 ********************/

			/******************** 전송정보 ********************/
			sms.put("msg", aligo_message); // 메세지 내용
			sms.put("receiver", phone); // 수신번호
			sms.put("title", aligo_title); // LMS, MMS 제목 (미입력시 본문중 44Byte 또는 엔터 구분자 첫라인)
			sms.put("msg_type", "SMS"); // LMS, MMS 제목 (미입력시 본문중 44Byte 또는 엔터 구분자 첫라인)

			/******************** 전송정보 ********************/

			MultipartEntityBuilder builder = MultipartEntityBuilder.create();
			builder.setBoundary(boundary);
			builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);
			builder.setCharset(Charset.forName(encodingType));
			for (Iterator<String> i = sms.keySet().iterator(); i.hasNext();) {
				String key = i.next();
				builder.addTextBody(key, sms.get(key), ContentType.create("Multipart/related", encodingType));
			}

			HttpEntity entity = builder.build();
			HttpClient client = HttpClients.createDefault();
			HttpPost post = new HttpPost(sms_url);
			post.setEntity(entity);

			HttpResponse res = client.execute(post);

			String result = "";
			if (res != null) {
				BufferedReader in = new BufferedReader(
						new InputStreamReader(res.getEntity().getContent(), encodingType));
				String buffer = null;
				while ((buffer = in.readLine()) != null) {
					result += buffer;
				}
				in.close();
			}
			return result.split(",")[1].replaceAll("\\\"", "").split(":")[1];
		} catch (Exception e) {
			return "error";
		}
	}

}
