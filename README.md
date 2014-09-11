# hubot-at

hubot-at adds notification at specific time.

## Installation

Add `hubot-at` to your package.json, run `npm install` and add hubot-at to `external-scripts.json`.

Add hubot-at to your `package.json` dependencies.

```
"dependencies": {
  "hubot-at": ">= 0.0.1"
}
```

Add `hubot-at` to `external-scripts.json`.

```
> cat external-scripts.json
> ["hubot-at"]
```

## Usage

```
kenjiskywalker> hubot at HH:MM foo
hubot> OK. I'll tell you "foo" at HH:MM

...

hubot> @kenjiskywalker It's HH:MM. Don't forget "foo"
```

## See Also

- `reminder.coffee` in hubot-scripts.  
- [hubot-cron](https://github.com/miyagawa/hubot-cron)
