package com.enums;

import org.apache.commons.lang3.StringUtils;

public enum PageType {
	HOME("home", "HomePage", "/homepage"),
	SEARCH("search", "SearchPage", "/search"),
	ACCOUNT("account", "AccountPage", "/account"),
	CATEGORY("category", "CategoryPage","/category");
	
	private String context;
	private String page;
	private String controllerPath;
	
	/*	Simple Enum constructor */
	private PageType(final String context, final String page, final String controllerPath) {
		this.context=context;
		this.page=page;
		this.controllerPath=controllerPath;
	}

	public String getContext() {
		return context;
	}

	public String getPage() {
		return page;
	}

	public String getControllerPath() {
		return controllerPath;
	}
	
	public static PageType findByContext(final String context) {
		if(StringUtils.isBlank(context)) {
			return null;
		}
		
		for(final PageType pageType : PageType.values()) {
			if(pageType.context.equals(context)) {
				return pageType;
			}
		}
		return null;
	}
	
	public static PageType findByPage(final String page) {
		if(StringUtils.isBlank(page)) {
			return null;
		}
		for(PageType pageType : PageType.values()) {
			if(pageType.page!=null && pageType.page.equals(page)) {
				return pageType;
			}
		}
		return null;
	}
	
	public static PageType findByContextIgnoreCase(final String context) {
		if(StringUtils.isBlank(context)) {
			return null;
		}
		
		for(PageType pageType : PageType.values()) {
			if(pageType.context!=null && pageType.context.equalsIgnoreCase(context)) {
				return pageType;
			}
		}
		return null;
	}
	
	public static PageType tryTofind(final String value) {
		if(StringUtils.isBlank(value)) {
			return null;
		}
		
		PageType result = PageType.findByPage(value);
		
		if(result == null) {
			result= PageType.findByContext(value);
		}
		
		if(result == null) {
			result= PageType.findByContextIgnoreCase(value);
		}
		
		if(result == null) {
			try {
			result= PageType.valueOf(value);
			}catch(final Exception e) {
				result=null;
			}
		}
		return result;
	}
}
