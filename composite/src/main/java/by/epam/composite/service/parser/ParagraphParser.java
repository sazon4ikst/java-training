package by.epam.composite.service.parser;

import by.epam.composite.domain.Component;
import by.epam.composite.domain.TextComposite;

import java.util.ArrayList;
import java.util.List;

public class ParagraphParser extends AbstractParser {
    private static final String SPLIT_SENTENCE = "(?<=[.!?])( )";

    @Override
    public Component parse(String string) {
        List<Component> components = new ArrayList<>();
        if (checkNextSuccessor()) {
            getSuccessor().parse(string);
            String[] parts = string.trim().split(SPLIT_SENTENCE);
            for (String part : parts) {
                Component component = getSuccessor().parse(part);
                components.add(component);
            }
        }
        return new TextComposite(components);
    }
}
