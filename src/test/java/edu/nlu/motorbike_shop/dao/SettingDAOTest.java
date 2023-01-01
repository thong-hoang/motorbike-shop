package edu.nlu.motorbike_shop.dao;

import edu.nlu.motorbike_shop.constant.Constants;
import edu.nlu.motorbike_shop.entity.Setting;
import org.junit.Test;

import static org.junit.Assert.assertTrue;

public class SettingDAOTest {
    private final SettingDAO settingDAO = SettingDAO.getInstance();

    @Test
    public void testFindAllByCategory() {
        settingDAO.findAllByCategory(Constants.GENERAL_SETTING_CATEGORY).forEach(System.out::println);

        assertTrue(settingDAO.findAllByCategory(Constants.GENERAL_SETTING_CATEGORY).size() > 0);
    }

    @Test
    public void testUpdateSettingStore() {
        String key = "SITE_PHONE";
        String value = "0123456789";
        Setting setting = new Setting(key, value);

        assertTrue(settingDAO.updateSettingStore(setting));
    }
}