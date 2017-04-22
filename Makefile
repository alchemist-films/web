OBJS=css/normalize.css css/style.css

.PHONY: all clean

all: $(OBJS)

css/normalize.css: node_modules/normalize.css
	cp $</normalize.css $@
css/style.css: less/style.less
	lessc $< $@

clean:
	rm -rf $(OBJS)
