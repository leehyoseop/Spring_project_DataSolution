package com.TTValue.main.place;

import java.util.List;

public interface PlaceMapper {
	
	public abstract int placefunc(Place p);
	
	public abstract List<Place> searchPlacefunc(Place p);
	
	public abstract List<Place> jsonPlacefunc(Place p);
}
