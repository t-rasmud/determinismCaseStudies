package org.scribe.utils;

import java.util.Map;

import org.checkerframework.checker.determinism.qual.*;

/**
 * @author Pablo Fernandez
 */
public class MapUtils
{
  private MapUtils(){}

  public static <K extends @PolyDet Object,V extends @PolyDet Object> @Det String toString(Map<K,V> map)
  {
    if (map == null) return "";
    if (map.isEmpty()) return "{}";

    StringBuilder result = new StringBuilder();
    for(Map. @Det Entry<K,V> entry : map.entrySet())
    {
      result.append(String.format(", %s -> %s ", entry.getKey().toString(), entry.getValue().toString()));
    }
    return "{" + result.substring(1) + "}";
  }
}
