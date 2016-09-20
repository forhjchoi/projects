package com.mycom.camerainfo.dto;

import org.springframework.stereotype.Repository;

@Repository
public class GallaryDto {
	
	private int num;
	private int galltype;
	private int type;
	private String title;
	private String author;	
	private String pic;
	private String content;
	private int hits;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}	
	public int getGalltype() {
		return galltype;
	}
	public void setGalltype(int galltype) {
		this.galltype = galltype;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	
	

}
