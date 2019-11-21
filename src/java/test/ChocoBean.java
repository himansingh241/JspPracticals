/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.io.Serializable;

/**
 *
 * @author himan
 */
public class ChocoBean implements Serializable {
    String texture;
    String result;
    public ChocoBean() {
    }

    public String getTexture() {
        return texture;
    }

    public void setTexture(String texture) {
        this.texture = texture;
        if (texture.equalsIgnoreCase("chewy")) {
            setResult("FiveStar, BarOne");
        }
        else if (texture.equalsIgnoreCase("crunchy")) {
            setResult("Munch, KitKat");
        }
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }
    
}
