library built_json_generator.library_elements;

import 'package:analyzer/src/generated/element.dart';
import 'package:built_collection/built_collection.dart';

/// Tools for [LibraryElement]s.
class LibraryElements {
  static BuiltList<ClassElement> getClassElements(
      LibraryElement libraryElement) {
    final result = new _GetClassesVisitor();
    libraryElement.visitChildren(result);
    return new BuiltList<ClassElement>(result.classElements);
  }

  static BuiltList<ClassElement> getTransitiveClassElements(
      LibraryElement libraryElement) {
    final result = new ListBuilder<ClassElement>();
    for (final source in libraryElement.context.librarySources) {
      final otherLibraryElement =
          libraryElement.context.getLibraryElement(source);
      if (otherLibraryElement != null) {
        result.addAll(getClassElements(otherLibraryElement));
      }
    }
    return result.build();
  }
}

/// Visitor that gets all [ClassElement]s.
class _GetClassesVisitor extends SimpleElementVisitor {
  final List<ClassElement> classElements = new List<ClassElement>();

  @override
  visitClassElement(ClassElement element) {
    classElements.add(element);
  }

  @override
  visitCompilationUnitElement(CompilationUnitElement element) {
    element.visitChildren(this);
  }
}
