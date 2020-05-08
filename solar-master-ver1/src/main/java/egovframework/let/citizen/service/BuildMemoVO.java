package egovframework.let.citizen.service;

import java.util.Date;

public class BuildMemoVO {
	
	private int id;

	private Integer parentId;

	private String parentType;

	private Integer userId;

	private String content;

	/** createdAt dd/mm/yyyy */
	private Date createdAt;

	/** updatedAt dd/mm/yyyy */
	private Date updatedAt;

	/** deletedAt dd/mm/yyyy */
	private Date deletedAt;

	public BuildMemoVO(Integer parentId, String parentType, Integer userId, String content) {
		this.parentId = parentId;
		this.parentType = parentType;
		this.userId = userId;
		this.content = content;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Integer getParentId() {
		return parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	public String getParentType() {
		return parentType;
	}

	public void setParentType(String parentType) {
		this.parentType = parentType;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public Date getDeletedAt() {
		return deletedAt;
	}

	public void setDeletedAt(Date deletedAt) {
		this.deletedAt = deletedAt;
	}
}
