package br.com.unipejet.models;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;

@Component
@Scope(value = WebApplicationContext.SCOPE_SESSION, proxyMode = ScopedProxyMode.TARGET_CLASS)
public class ShoppingCart{

	private Map<Compras, Integer> items = new LinkedHashMap<Compras, Integer>();

	public void add(Compras item) {
		items.put(item, getQuantity(item) + 1);
	}

	public Integer getQuantity(Compras item) {
		if (!items.containsKey(item)) {
			items.put(item, 0);
		}
		return items.get(item);
	}

	public Integer getQuantity() {
		return items.values().stream()
				.reduce(0, (next, accumulator) -> next + accumulator);
	}

	public Collection<Compras> getList() {
		return items.keySet();
	}

	public double getTotal(Compras item) {
		return item.getTotal();
	}
	
	public void remove(Compras Compras) {
		items.remove(Compras);
	}

	public boolean isEmpty() {
		return items.isEmpty();
	}

}