package edu.bit.ex.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
public class Criteria {
	private int nowPage;
	private int amount;
	
	public Criteria() {
		this(1, 10);
	}
	
	public Criteria(int nowPage, int amount) {
		this.amount = amount;
		this.nowPage = nowPage;
	}
}
