package armory.logicnode;

class ExpressionNode extends LogicNode {

	public var property0:String;
	var result:Dynamic;

	public function new(tree:LogicTree) {
		super(tree);
	}

	override function get(from:Int):Dynamic {
		#if arm_hscript
		var values : Array<Dynamic> = [for (i in inputs.slice(1)) i.get()];
		var expr = inputs[0].get();
		var parser = new hscript.Parser();
		var ast = parser.parseString(expr);
		var interp = new hscript.Interp();
		for (i in 0...values.length)	interp.variables.set("v"+i,values[i]);
		result = interp.execute(ast);
		#end
		return result;
	}
}
