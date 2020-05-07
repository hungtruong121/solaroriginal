package egovframework.let.citizen.service;

import java.io.Serializable;
import java.util.Date;

public class NoticeVO implements Serializable {

	/** serialVersionUID */
	private static final long serialVersionUID = -1L;
   private int id;
   private int userId;
   private Integer category;
   private String title;
   private String content;
   private String imgPath;
   private int views;
   private int buildCompanyId;
   private Date createAt;
   private Date updateAt;
   private Date deleteAt;
   
   public NoticeVO() {
	super();
}
public NoticeVO(int id, int userId, Integer category, String title, String content, String imgPath, int views,
		int buildCompanyId, Date createAt, Date updateAt, Date deleteAt) {
	super();
	this.id = id;
	this.userId = userId;
	this.category = category;
	this.title = title;
	this.content = content;
	this.imgPath = imgPath;
	this.views = views;
	this.buildCompanyId = buildCompanyId;
	this.createAt = createAt;
	this.updateAt = updateAt;
	this.deleteAt = deleteAt;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
}
public Integer getCategory() {
	return category;
}
public void setCategory(Integer category) {
	this.category = category;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getImgPath() {
	return imgPath;
}
public void setImgPath(String imgPath) {
	this.imgPath = imgPath;
}
public int getViews() {
	return views;
}
public void setViews(int views) {
	this.views = views;
}
public int getBuildCompanyId() {
	return buildCompanyId;
}
public void setBuildCompanyId(int buildCompanyId) {
	this.buildCompanyId = buildCompanyId;
}
public Date getCreateAt() {
	return createAt;
}
public void setCreateAt(Date createAt) {
	this.createAt = createAt;
}
public Date getUpdateAt() {
	return updateAt;
}
public void setUpdateAt(Date updateAt) {
	this.updateAt = updateAt;
}
public Date getDeleteAt() {
	return deleteAt;
}
public void setDeleteAt(Date deleteAt) {
	this.deleteAt = deleteAt;
}



}
