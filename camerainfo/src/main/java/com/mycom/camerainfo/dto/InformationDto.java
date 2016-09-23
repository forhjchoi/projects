package com.mycom.camerainfo.dto;

import org.springframework.stereotype.Repository;

@Repository
public class InformationDto {

	private int num;
	private String brand;
	private String name;
	private String pic;
	private int pixel;
	private String lens;
	private String shutter;
	private String shutter_speed;
	private String record_type;
	private String iso;
	private String bluetooth;
	private String filter_size;
	private String weight;
	private String max_shot_ratio;
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public int getPixel() {
		return pixel;
	}
	public void setPixel(int pixel) {
		this.pixel = pixel;
	}
	public String getLens() {
		return lens;
	}
	public void setLens(String lens) {
		this.lens = lens;
	}
	public String getShutter() {
		return shutter;
	}
	public void setShutter(String shutter) {
		this.shutter = shutter;
	}
	public String getShutter_speed() {
		return shutter_speed;
	}
	public void setShutter_speed(String shutter_speed) {
		this.shutter_speed = shutter_speed;
	}
	public String getRecord_type() {
		return record_type;
	}
	public void setRecord_type(String record_type) {
		this.record_type = record_type;
	}
	public String getIso() {
		return iso;
	}
	public void setIso(String iso) {
		this.iso = iso;
	}
	public String getBluetooth() {
		return bluetooth;
	}
	public void setBluetooth(String bluetooth) {
		this.bluetooth = bluetooth;
	}
	public String getFilter_size() {
		return filter_size;
	}
	public void setFilter_size(String filter_size) {
		this.filter_size = filter_size;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getMax_shot_ratio() {
		return max_shot_ratio;
	}
	public void setMax_shot_ratio(String max_shot_ratio) {
		this.max_shot_ratio = max_shot_ratio;
	}
	
	
	
	
}
